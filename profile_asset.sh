#!/bin/bash


# Search for our database asset (HODROJ.COMPANY)
curl --request GET \
 --url 'https://sandbox.acceldata.app/catalog-server/api/assets/search/COMPANY' \
 --header 'accessKey: ACCESS_KEY' \
 --header 'secretKey: SECRET_KEY'


 # Start profiling (COMPANY database)
 curl --request POST \
 --url 'https://sandbox.acceldata.app/catalog-server/api/assets/43510/profile' \
 --header 'accessKey: ACCESS_KEY' \
 --header 'secretKey: SECRET_KEY' \
 --data '{
  "data": {
    "profilingType": "FULL"
  }
}'


# Check profiling status
curl --request GET \
 --url 'https://sandbox.acceldata.app/catalog-server/api/assets/43510/profile' \
 --header 'accessKey: ACCESS_KEY' \
 --header 'secretKey: SECRET_KEY'
