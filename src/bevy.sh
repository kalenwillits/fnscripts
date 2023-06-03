#!/bin/bash

set -e;

if [[ $1 == "run" ]]; then
cargo run --features bevy/dynamic_linking;

elif [[ $1 == "new" ]]; then
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

else 
echo "Invalid argument supplied to bevy fn script [$1]"
fi
