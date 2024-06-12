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
  dimension: partner_location {
    type: location
    sql_latitude: ${TABLE}.Partner_Latitude ;;
    sql_longitude: ${TABLE}.Partner_Longitude ;;
  }
  dimension: pta {
    type: number
    sql: ${TABLE}.PTA ;;
  }
  dimension: work_order_number {
    type: string
    sql: cast(${TABLE}.work_order_number as string) ;;
  }
  measure: count {
    type: count
  }
}
