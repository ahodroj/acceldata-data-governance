#!/bin/bash
# Usage example: ./torch.sh GET /asset-types

ACCESS_KEY=5W1ZDFKKLMVQ0JT
SECRET_KEY=YKEK5W57KXP5IFAW2OI59L902JQCHP

curl --request GET \
 --url 'https://sandbox.acceldata.app/catalog-server/api/asset-types' \
 --header 'accessKey: $ACCESS_KEY' \
 --header 'secretKey: $SECRET_KEY'
