#!/usr/bin/env bash

cd ../web
npm run-script build

cd ../
mvn clean install

java -jar -Dspring.profiles.active=prod target/demo-0.0.1-SNAPSHOT.jar
