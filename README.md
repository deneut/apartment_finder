# Apartment Finder Rust Server

## Running the server with `cargo`

You will need to have [the Rust toolchain installed](https://www.rust-lang.org/tools/install).

```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```
To set up the database, run the `db_migration.sql` script in your local DB, and make sure the connection string in `Rocket.toml` matches your local settings. 

Then, use `cargo run` in the root directory for a debug build, or `cargo run --release` for a production build (might be long compile times).

## Using the Docker Container (no install of Rust required)

Building the image is very simple. All you need is to set the DB connection string in Rocket.toml to the correct settings for your local database. 

Then, from the `webserver` directory of the project: 

    docker build --tag webserver:0.2.5 .

If you already compiled the Rust code with `cargo`, the build will go *much* more quickly if you run `cargo clean` before the build.

## Using the Web Feature Editor

All menus are accessed through the context menu (right-click). There are different menus for clicks on the map directly, or on an existing feature. 

When the label of a feature is blue, you are in text edit mode. Use "Enter" to confirm. To enter more than one label for a feature, separate the labels with commas (white space around commas will be ignored).

The other editing tools should be self-explanatory. 

### Doing Searches
Currently the search supported in the editor is quite basic - a search for an address returns any features that are associated with that longitude/latitude.

Apartment and building searches can be done, using any formats that Google Places Search understands. For example, "635 South Ellis Street, #22, Chandler, AZ" will find building #22 at that address, and "635 South Ellis Street, apt 1135, Chandler, AZ" will find an individual apartment. 

The `POST` API for search supports any arbitrary combination of feature type, feature label, and geometry. Searches for "all gates in an area", "closest door to an apartment", etc. are only supported through `POST` requests, which is not supported in the editor search box. 

### Data Entry Speed
With very little experience with the editor, I was able to complete the map for "Stone Oaks" at "2450 W Pecos Rd, Chandler, AZ" in 35 minutes. This complex has approximately 180 units. 

