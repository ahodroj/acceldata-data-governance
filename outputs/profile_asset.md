# Search for an asset and trigger a profiling job against it

##

## Trigger a profile job against asset ID 43510
````
curl --request POST \
--url 'https://sandbox.acceldata.app/catalog-server/api/assets/43510/profile' \
--header 'accessKey: 5W1ZDFKKLMVQ0JT' \
--header 'secretKey: YKEK5W57KXP5IFAW2OI59L902JQCHP' \
--data '{
 "data": {
   "profilingType": "FULL"
 }
}'
````

# Response
````
{"data" : {"assetId" : 43510, "autoProfileId" : null, "createdAt" : "2023-02-15T07:48:10.242Z", "error" : null, "id" : 14136, "isProfileAnomalous" : false, "jobId" : "9eb515a9-9479-43a5-bc56-925a65664dbc", "jobType" : "profile", "marker" : null, "markerConfig" : null, "profileDataAvailable" : false, "profiledData" : null, "profilingType" : "FULL", "rows" : null, "sparkClusterContext" : "LIVY", "status" : "IN PROGRESS", "totalRows" : null, "updatedAt" : "2023-02-15T07:48:10.242Z"}}
````
