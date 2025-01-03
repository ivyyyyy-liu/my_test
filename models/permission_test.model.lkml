connection: "ivy_testing"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: permission_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: permission_test_default_datagroup


#explore: looker_test {}

explore: looker_permission {
  view_label: "overall_sales"
  access_filter: {
    field: email
    user_attribute: email
  }
  join: looker_test {
    sql_on: ${looker_permission.store_id} = ${looker_test.store_id};;
    relationship: many_to_one
  }

}
