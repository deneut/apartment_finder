use crate::api::models;
use crate::db::functions;
use geojson::GeoJson;
use rocket::http::Status;
use rocket::response::status;
use rocket_contrib::databases::diesel;
use rocket_contrib::databases::diesel::prelude::*;
use rocket_contrib::json::Json;

// will match POST requests that have a GooglePlacesResult as the JSON body
#[post("/search", format = "json", data = "<google_json>", rank = 1)]
pub async fn google_places_result_search(
    conn: crate::PgConn,
    google_json: Json<models::GooglePlacesResult>,
) -> Result<Json<GeoJson>, status::Custom<String>> {
    let real_json = google_json.into_inner();
    let search_fn = functions::search_by_location(
        real_json.geometry.location.lng,
        real_json.geometry.location.lat,
        real_json.formatted_address,
    );

    match conn
        .run(move |c| diesel::select(search_fn).first::<serde_json::Value>(c))
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
