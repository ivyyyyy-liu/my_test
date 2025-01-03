view: sample_superstore_people {
  sql_table_name: `ivy_test1.sample_superstore_people` ;;

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }
  dimension: region_manager {
    type: string
    sql: ${TABLE}.Region_Manager ;;
  }
  measure: count {
    type: count
  }
}
