#!/bin/bash

set -xe;

cargo new $1;
cd $1;
cargo add bevy;
printf "\n[profile.dev.package.\"*\"]\nopt-level = 3\n\n[profile.dev]\nopt-level = 1" >> "config.toml"
