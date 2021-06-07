#!/bin/sh

FILEUPLOAD_HOST="http://localhost:80/query"

curl "$FILEUPLOAD_HOST" \
  -F operations='{ "query": "mutation ($req: UploadFile!) { singleUploadWithPayload(req: $req) { id, name, content } }", "variables": { "req": {"file": null, "id": 1 } } }' \
  -F map='{ "0": ["variables.req.file"] }' \
  -F 0=@./fileupload-service/testfiles/a.txt
