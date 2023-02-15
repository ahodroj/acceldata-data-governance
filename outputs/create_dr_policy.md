# Create a data reliability policy (uniqueness check)

##

## Trigger a profile job against asset ID 43510
````
curl --request POST \
 --url 'https://sandbox.acceldata.app/catalog-server/api/rules/data-quality/' \
 --header 'accessKey: ACCESS_KEY' \
 --header 'secretKey: SECRET_KEY' \
 --data '{
  "details": {
    "backingAssetId": 43510,
    "id": 62,
    "items": [
      {
        "columnName": "NAME",
        "enableRowProcessing": true,
        "executionOrder": 1,
        "id": 200,
        "measurementType": "DISTINCTNESS_CHECK",
        "resultThreshold": 100,
        "ruleExpression": null,
        "ruleId": 62,
        "value": null,
        "weightage": 100
      }
    ],
    "ruleId": 144
  },
  "rule": {
    "archivalReason": null,
    "archived": false,
    "backingAsset": {
      "customQuery": null,
      "customTableAssetIds": null,
      "id": 43510,
      "marker": null,
      "ruleId": 144,
      "tableAlias": null,
      "tableAssetId": 4
    },
    "description": "AMH: API-generated uniqueness policy",
    "enabled": true,
    "id": 144,
    "lastUpdatedBy": "torch@acceldata.io",
    "name": "AMH: API-generated uniqueness policy",
    "notificationChannels": null,
    "schedule": null,
    "scheduled": false,
    "tags": null,
    "tenantId": "acceldata",
    "thresholdLevel": {
      "success": 100,
      "warning": 70
    },
    "type": "DATA_QUALITY"
  }
}'
````

# Response
````
{"errors" : [{"details" : null, "message" : "Unrecognized field \"details\" (class io.ad.catalog.api.model.quality.DataQuality$RuleRequest), not marked as ignorable (4 known properties: \"items\", \"rule\", \"transformUDFs\", \"cloningDetails\"])\n at [Source: (String)\"{\n  \"details\": {\n    \"backingAssetId\": 43510,\n    \"id\": 62,\n    \"items\": [\n      {\n        \"columnName\": \"NAME\",\n        \"enableRowProcessing\": true,\n        \"executionOrder\": 1,\n        \"id\": 200,\n        \"measurementType\": \"DISTINCTNESS_CHECK\",\n        \"resultThreshold\": 100,\n        \"ruleExpression\": null,\n        \"ruleId\": 62,\n        \"value\": null,\n        \"weightage\": 100\n      }\n    ],\n    \"ruleId\": 144\n  },\n  \"rule\": {\n    \"archivalReason\": null,\n    \"archived\": false,\n    \"backingAsset\"\"[truncated 607 chars]; line: 49, column: 2] (through reference chain: io.ad.catalog.api.model.quality.DataQuality$RuleRequest[\"details\"])", "status" : 500}]}
````
