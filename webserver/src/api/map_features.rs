use crate::db::functions;
use rocket::http::Status;
use rocket::response::status;
use rocket_contrib::databases::diesel;
use rocket_contrib::databases::diesel::prelude::*;
use rocket_contrib::json::Json;

use geojson::GeoJson;

/// Endpoint that accepts GeoJSON in the body, and UPSERTS DB
#[post("/map-features", format = "json", data = "<geojson>")]
pub async fn post_map_feature(
    conn: crate::PgConn,
    geojson: Json<GeoJson>,
) -> Result<Json<GeoJson>, status::Custom<String>> {
    // if we're here, we *know* we have valid GeoJSON, so we can use unwrap()
    // to get the bytes out for Postgres
    let geojsonb = serde_json::to_value(geojson.into_inner()).unwrap();

    // set up our function call
    let upsert_map_feature_fn = functions::upsert_map_feature(geojsonb);

    match conn
        .run(move |c| diesel::select(upsert_map_feature_fn).first::<serde_json::Value>(c))
        .await
    {
        Ok(data) => match serde_json::from_value::<GeoJson>(data) {
            Ok(geojson_response) => Ok(Json(geojson_response)),
            Err(e) => Err(status::Custom(
                Status::InternalServerError,
                format!("DB did not return valid GeoJSON: {}", e),
            )),
        },
        Err(e) => Err(status::Custom(
            Status::InternalServerError,
            format!("Error: {}", e),
        )),
    }
}
