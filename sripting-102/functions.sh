#!/bin/bash

mcd(){
    mkdir -p "$1"
    cd "$1"
}

user () {
    echo "Hello $(whoami) This is a function"
    echo "Bye"
}



create_user (){
    user="$1"
    password="$2"
    uid="$3"

    useradd $user -u $uid -p $password
}