resource "elasticstack_elasticsearch_ingest_pipeline" "my_app" {
  name = "my-app"
  processors = [
    jsonencode({
      set = {
        field = "pipeline"
        value = "my-app/v2"
      }
    }),
    jsonencode({
      "json" : {
        "field" : "message",
        "target_field" : "message_json",
      }
    }),
    jsonencode({
      set = {
        field = "kind_name"
        value = "{{ message_json.pet_kind }} {{ message_json.pet_name }}"
      }
    }),
  ]
}
