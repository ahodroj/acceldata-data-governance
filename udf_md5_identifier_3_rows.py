#rowJson: JSON String representing a row. Output should be data type provided at template creation.
# This UDF will generate an MD5 hash from 3 columns in the CRUNCHBASE comapny database
import json
import hashlib

def evaluatePredicate(rowJson):
  row = json.loads(rowJson)
  text = str(row['NAME']) + str(row['PERMALINK'] + str(row['TYPE']))

  return hashlib.md5(text.encode('utf-8')).hexdigest()
