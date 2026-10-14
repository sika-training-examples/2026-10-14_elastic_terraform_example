resource "elasticstack_kibana_import_saved_objects" "my_app" {
  for_each = toset([
    elasticstack_kibana_space.global.id,
    elasticstack_kibana_space.my_app.id,
  ])

  overwrite     = true
  space_id      = each.key
  file_contents = file("./dashboards/my_app_dashboad.ndjson")
}
