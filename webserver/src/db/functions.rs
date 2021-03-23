use diesel::sql_types::*;

sql_function! {
    /// Searches the map_features DB based on lat/lg, and returns GeoJSON
    #[sql_name = "search_by_location"]
    fn search_by_location(lng: Double, lat: Double, address: Nullable<Text>) -> Jsonb;
}

sql_function! {
    /// UPSERT a map_feature with GeoJSON
    #[sql_name = "upsert_map_feature"]
    fn upsert_map_feature(geojson: Jsonb) -> Jsonb;
}
