use serde::Deserialize;

/// Implements LatLng from Google Maps
#[derive(Deserialize)]
pub struct LatLng {
    pub lat: f64,
    pub lng: f64,
}

/// Implements Viewport from Google Maps
#[derive(Deserialize)]
pub struct Viewport {
    pub south: f64,
    pub west: f64,
    pub north: f64,
    pub east: f64,
}

/// A simple struct to hold the locations from a Google Places Search,
/// with the LatLng in the same format as that used by Google Maps
#[derive(Deserialize)]
pub struct GooglePlacesSearch {
    pub locations: Vec<LatLng>,
}

#[derive(Deserialize)]
/// A Google Places geometry
pub struct GooglePlacesGeometry {
    pub location: LatLng,
    pub viewport: Option<Viewport>,
}

/// A Google Places search result. Not by any means complete
#[derive(Deserialize)]
pub struct GooglePlacesResult {
    pub formatted_address: Option<String>,
    pub geometry: GooglePlacesGeometry,
}
