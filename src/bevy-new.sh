#!/bin/bash

set -xe;

cargo new $1 --bin;
cd $1;
cargo add bevy;
printf "\n[profile.dev.package.\"*\"]\nopt-level = 3\n\n[profile.dev]\nopt-level = 1" >> "Cargo.toml";
printf "\n\n#Vim\n*.sw*" >> .gitignore;

printf "
use bevy::prelude::*;

fn main() {
    App::new()
        .add_plugins(DefaultPlugins)
        .add_system(bevy::window::close_on_esc)
        .run();
}" > src/main.rs; 
