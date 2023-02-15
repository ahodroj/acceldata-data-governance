#!/bin/bash


# Search for our database asset (HODROJ.COMPANY)
curl --request GET \
 --url 'https://sandbox.acceldata.app/catalog-server/api/assets/search/COMPANY' \
 --header 'accessKey: ACCESS_KEY' \
 --header 'secretKey: SECRET_KEY'


 # Create a data quality rule that checks for uniqueness against asset 43510 (Hodroj.COMPANY)
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
