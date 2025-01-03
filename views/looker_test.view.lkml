view: looker_test {
  sql_table_name: `ivy_test1.looker_test` ;;

  dimension: sales {
    type: number
    sql: ${TABLE}.sales ;;
  }
  dimension: store_id {
    type: string
    sql: ${TABLE}.store_id ;;
  }
  measure: count {
    type: count
  }

  measure: sale{
    type: number
    sql: ${TABLE}.sales ;;
  }

  measure: total_sales{
    type: sum
    sql: ${TABLE}.sales ;;
  }
}
