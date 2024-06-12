view: aaa_tracking {
  sql_table_name: `sqsh-developer-pocs.aaa_demo.aaa_tracking` ;;

  dimension: partner_id {
    type: string
    sql: ${TABLE}.Partner_ID ;;
  }
  dimension: partner_latitude {
    type: string
    sql: ${TABLE}.Partner_Latitude ;;
  }
  dimension: partner_longitude {
    type: string
    sql: ${TABLE}.Partner_Longitude ;;
  }
  dimension: pta {
    type: number
    sql: ${TABLE}.PTA ;;
  }
  dimension: work_order_number {
    type: number
    sql: ${TABLE}.work_order_number ;;
  }
  measure: count {
    type: count
  }
}
