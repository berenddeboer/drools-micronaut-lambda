#!/usr/bin/env bash

# Generate Java classes from .drl in resources
mvn package -Dpackaging=kjar

# Create the application.jar to use
mvn package -Dpackaging=jar

# Overwrite the application.jar generated by Micronaut
cp -p target/application-0.1.jar build/docker/native-main/layers/app/application.jar