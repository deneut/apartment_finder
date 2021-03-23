// #![feature(decl_macro)]
// these need to be here, in this order, for the Docker container to build
extern crate openssl;
#[macro_use]
extern crate diesel;

#[macro_use]
extern crate rocket;
#[macro_use]
extern crate rocket_contrib;
#[macro_use]
extern crate serde_derive;

use rocket_contrib::helmet::SpaceHelmet;
use rocket_contrib::serve::StaticFiles;
use rocket_contrib::templates::Template;

mod api;
mod db;
mod fairings; // CORS

const VERSION: &str = env!("CARGO_PKG_VERSION");
#[database("apartment_db")]
pub struct PgConn(rocket_contrib::databases::diesel::PgConnection);

#[derive(Serialize)]
struct TemplateContext<'a> {
    version: &'a str,
}

#[get("/")]
pub async fn index() -> Template {
    let context = TemplateContext { version: VERSION };
    Template::render("index", &context)
}

#[get("/editor")]
pub async fn editor() -> Template {
    let context = TemplateContext { version: VERSION };
    Template::render("editor", &context)
}

#[launch]
fn rocket() -> rocket::Rocket {
    rocket::ignite()
        .mount("/", routes![index, editor])
        .mount(
            "/api/",
            routes![
                api::search::google_places_result_search,
                api::map_features::post_map_feature
            ],
        )
        .mount("/js", StaticFiles::from("static"))
        .mount("/img", StaticFiles::from("static"))
        .mount("/css", StaticFiles::from("static"))
        .attach(SpaceHelmet::default())
        .attach(PgConn::fairing())
        .attach(Template::fairing())
        .attach(fairings::CORS())
}
