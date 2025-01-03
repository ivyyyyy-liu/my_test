view: sample_superstore_orders {
  sql_table_name: `ivy_test1.sample_superstore_orders` ;;

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }
  dimension: country_region {
    type: string
    sql: ${TABLE}.Country_Region ;;
  }
  dimension: customer_name {
    type: string
    sql: ${TABLE}.Customer_Name ;;
  }
  dimension: discount {
    type: number
    sql: ${TABLE}.Discount ;;
  }
  dimension: manufacturer {
    type: string
    sql: ${TABLE}.Manufacturer ;;
  }
  dimension_group: order {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Order_Date ;;
  }
  dimension: order_id {
    type: string
    sql: ${TABLE}.Order_ID ;;
  }
  dimension: postal_code {
    type: string
    sql: ${TABLE}.Postal_Code ;;
  }
  dimension: product_name {
    type: string
    sql: ${TABLE}.Product_Name ;;
  }
  dimension: profit {
    type: number
    sql: ${TABLE}.Profit ;;
  }
  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }
  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }
  dimension: sales {
    type: number
    sql: ${TABLE}.Sales ;;
  }
  dimension: segment {
    type: string
    sql: ${TABLE}.Segment ;;
  }
  dimension_group: ship {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Ship_Date ;;
  }
  dimension: ship_mode {
    type: string
    sql: ${TABLE}.Ship_Mode ;;
  }
  dimension: state_province {
    type: string
    sql: ${TABLE}.State_Province ;;
  }
  dimension: sub_category {
    type: string
    sql: ${TABLE}.Sub_Category ;;
  }
  measure: count {
    type: count
    drill_fields: [customer_name, product_name]
  }
}
