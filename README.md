# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

### Initial Setup of EventRelay

In development you can start EventRelay without authentication for the GRPC API by setting `ER_SKIP_GRPC_AUTH=true`

Start EventRelay:

`ER_SKIP_GRPC_AUTH=true mix phx.server`

Once EventRelay is up and running you can use grpcurl to create the topic needs for this Rails app.

```bash
grpcurl -plaintext -proto event_relay.proto -d '{"name": "posts"}' localhost:50051 eventrelay.Topics.CreateTopic
```

```json
{
  "topic": {
    "id": "a9cc1872-363d-45c3-9de1-ae9a1d3a9082",
    "name": "posts"
  }
}
```


* Deployment instructions

* ...
