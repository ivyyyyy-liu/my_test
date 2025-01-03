view: looker_permission {
  sql_table_name: `ivy_test1.looker_permission` ;;

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: store_id {
    type: string
    sql: ${TABLE}.store_id ;;
  }
  measure: count {
    type: count
  }
}
