#!/bin/bash
URL="http://localhost:8080/api"
curl -X POST \
    -H "Content-Type: application/json" \
    -d '{"content": "Hello World", "metadata": "test"}' \
    "$URL/publish"