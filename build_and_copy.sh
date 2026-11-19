#!/bin/bash
target_folder="$1"

if [ $# -ne 1 ]; then
    echo "You need to pass a target folder as an argument."
    exit 1
fi

mvn clean package -DskipTests=true
cp model/target/tools.vitruv.methodologisttemplate.model-0.1.0-SNAPSHOT.jar "$target_folder"
cp consistency/target/tools.vitruv.methodologisttemplate.consistency-0.1.0-SNAPSHOT.jar "$target_folder"