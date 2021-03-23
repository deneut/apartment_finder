use rocket::fairing::{Fairing, Info, Kind};
use rocket::http::{ContentType, Header, Method};
use rocket::{Request, Response};
use std::io::Cursor;

pub struct CORS();

#[rocket::async_trait]
impl Fairing for CORS {
    fn info(&self) -> Info {
        Info {
            name: "Add CORS headers to requests",
            kind: Kind::Response,
        }
    }

    async fn on_response<'r>(&self, req: &'r Request<'_>, res: &mut Response<'r>) {
        // if this is an OPTIONS method request, or a response that is JSON, set the CORS headers
        if req.method() == Method::Options || res.content_type() == Some(ContentType::JSON) {
            res.set_header(Header::new("Access-Control-Allow-Origin", "*"));
            res.set_header(Header::new(
                "Access-Control-Allow-Methods",
                "POST, PUT, PATCH, GET, OPTIONS",
            ));
            res.set_header(Header::new("Access-Control-Allow-Headers", "Content-Type"));
            res.set_header(Header::new("Access-Control-Allow-Credentials", "true"));
        }

        //  for the OPTIONS method only, set the body
        if req.method() == Method::Options {
            res.set_header(ContentType::Plain);
            res.set_sized_body(None, Cursor::new(""));
        }
    }
}
