#!/bin/sh

# Pre-loads the prototype Mango database
curl -i -X POST -H "Content-Type:application/json" -d '{  "itemName" : "Chocolate",  "itemCode" : "123456",  "calories" : "291",  "totalFat" : "a ton",  "sodium" : "lots of it",  "qtyAvailable" : "300" }' http://localhost:8080/food

curl -i -X POST -H "Content-Type:application/json" -d '{  "itemName" : "Cake",  "itemCode" : "789123",  "calories" : "10",  "totalFat" : "234 g",  "sodium" : "none",  "qtyAvailable" : "69" }' http://localhost:8080/food

curl -i -X POST -H "Content-Type:application/json" -d '{  "itemName" : "Pizza",  "itemCode" : "424242",  "calories" : "42",  "totalFat" : "901 g",  "sodium" : "a little",  "qtyAvailable" : "1" }' http://localhost:8080/food