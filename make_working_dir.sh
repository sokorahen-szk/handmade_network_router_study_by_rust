#! /bin/bash

readonly CURRENT_PATH=`pwd`

readonly TARGET_FILES=(
    "docker-compose.yml"
    "alice/Dockerfile"
    "alice/mnt/entrypoint.sh"
    "bob/Dockerfile"
    "bob/mnt/entrypoint.sh"
    "router/Dockerfile"
    "router/router.env"
    "router/mnt/entrypoint.sh"
    "router/mnt/router-rs/Cargo.toml"
    "router/mnt/router-rs/src/main.rs"
)

function exists_path () {
    if [ -e $1 ]; then
        return 1
    fi

    return 0
}

function create_file() {
    dir=`dirname $1`
    file_name=`basename $1`

    exists_path $dir
    if [ $? -eq 0 ]; then
        mkdir -p $dir
    fi

    touch $1
}



for file in ${TARGET_FILES[@]}; do
    exists_path $CURRENT_PATH/$file
    if [ $? -eq 0 ]; then
        create_file $CURRENT_PATH/$file
    fi
done