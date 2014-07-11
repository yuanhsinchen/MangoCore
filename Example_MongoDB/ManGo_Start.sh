#!/bin/sh

# @author:  Alex Ororbia
#Resources/References:
# Building MongoDB via Spring/RestFul:
#   http://spring.io/guides/gs/accessing-mongodb-data-rest/
# Installing, configuring, starting, & connecting to a MongoDB server:
#   http://docs.mongodb.org/manual/tutorial/install-mongodb-on-windows/
# Basic MongoDB interactive commands:
#   http://docs.mongodb.org/manual/tutorial/getting-started/
# MongoDB Management Tools/Commands:
#   http://docs.mongodb.org/manual/tutorial/manage-mongodb-processes/

#Some preliminary steps:
# 1) Make sure you have Java (JRE & JDK) installed on your system (I used 1.7.0_40, but 1.8.+ should work):
#    http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
#    and don't forget to set the JAVA_HOME environment variable to point to it (aka. export JAVA_HOME=<directory path to your JDK>
# 2) Install Gradle as per:  http://spring.io/guides/gs/gradle/
# 3) Install MongoDB:  http://docs.mongodb.org/manual/tutorial/install-mongodb-on-windows/
# 4) Using the pre-packaged stuff I put together from the tutorial (most of it pulled from their GIT repo), you can then follow the main tutorial, or simply execute this script to build the basic MongoDB+application


# To run this script, simply open a separate terminal window and execute:
#  ~> Note that the "data/db" directory is the target of where your database goes
#
# Run the MongoDB daemon:
# $ mongod  --dbpath <directory where you made /data/db/>

# The primary build script
cd initial
./gradlew clean build # if Gradle is set up, will build the Spring app ($ clean up old junk)
java -jar build/libs/gs-accessing-mongodb-data-rest-0.1.0.jar # executes the jar/app

# This was successful if you see @ the bottom of the terminal output " Started Application in X.XXX seconds (JVM running for X.X)"

# Once the application starts up, you can run the following commands from yet a separate terminal (or just "&" things if you don't want to see output of the app):
#
# View our "service":
# $ curl http://localhost:8080
#
# View all the "people" link and what's inside (i.e. the data records/entries):
# $ curl http://localhost:8080/people
#
# Add in a record to the db:
# $ curl -i -X POST -H "Content-Type:application/json" -d '{  "firstName" : "Frodo",  "lastName" : "Baggins" }' http://localhost:8080/people
#
# Query a specific record (if you know its link):
# $ curl http://localhost:8080/people/53149b8e3004990b1af9f229
#
# Display what types of customized queries you can make(i.e. search by last name for example):
# $ curl http://localhost:8080/people/search
#
# In this example, you can query a "person" by their last name:
# $ curl http://localhost:8080/people/search/findByLastName?name=Baggins
#
# Replace a record completely in the database:
# $ curl -X PUT -H "Content-Type:application/json" -d '{ "firstName": "Bilbo", "lastName": "Baggins" }' http://localhost:8080/people/53149b8e3004990b1af9f229
#
# Update a field/subset of a record:
# $ curl -X PATCH -H "Content-Type:application/json" -d '{ "firstName": "Bilbo Jr." }' http://localhost:8080/people/53149b8e3004990b1af9f229
#
# Delete a record:
# $ curl -X DELETE http://localhost:8080/people/53149b8e3004990b1af9f229



