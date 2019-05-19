# Kibana Demo

This project generates a weeks worth of log entries to send to elasticsearch.
This was used for a Kibana tech talk.

## Usage

To generate logs:

```sh
ruby generate.rb > test.log
```

To send to an elasticsearch instance:

```sh
curl \
    -H 'Content-Type: application/x-ndjson' \
    -XPOST "YOUR_ELASTICSEARCH_ENDPOINT_URL" \
    --data-binary @test.log
```
