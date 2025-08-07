view: aaa_master_final {
  sql_table_name: `sqsh-developer-pocs.aaa_demo.aaa_master_final` ;;

  dimension: breakdown_location_latitude {
    type: number
    sql: ${TABLE}.breakdown_location_latitude ;;
  }
  dimension: breakdown_location_longitude {
    type: number
    sql: ${TABLE}.breakdown_location_longitude ;;
  }
  dimension: breakdown_location {
    type: location
    sql_latitude: ${TABLE}.breakdown_location_latitude ;;
    sql_longitude: ${TABLE}.breakdown_location_longitude ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }
  dimension: description_of_the_problem_code {
    type: string
    sql: ${TABLE}.description_of_the_problem_code ;;
  }
  dimension: member_id {
    type: string
    primary_key: yes
    sql: ${TABLE}.Member_Id ;;
  }
  dimension: partner_id {
    type: string
    sql: ${TABLE}.Partner_ID ;;
  }
  dimension: partner_latitude {
    type: number
    sql: ${TABLE}.partner_latitude ;;
  }
  dimension: partner_longitude {
    type: number
    sql: ${TABLE}.partner_longitude ;;
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
  dimension: pta_in_hrs {
    type: number
    sql: ${TABLE}.PTA_IN_HRS ;;
  }
  dimension: pta_truck {
    type: number
    sql: ${TABLE}.pta_truck ;;
  }
  dimension: pta_truck_predicted {
    type: number
    sql: ${TABLE}.pta_truck_predicted ;;
  }
  dimension: rn {
    type: number
    sql: ${TABLE}.rn ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }
  dimension: vehice_type {
    type: string
    sql: ${TABLE}.Vehice_Type ;;
  }
  dimension: vehicle_id {
    type: string
    sql: ${TABLE}.Vehicle_Id ;;
  }
  dimension: work_order_number {
    type: string
    sql: SAFE_CAST(${TABLE}.work_order_number as string);;
  }
  measure: count {
    type: count
  }
  measure: work_order_count {
    type: count_distinct
    sql: ${work_order_number} ;;
  }
  measure: avg_pta_predicted {
    type: average
    sql: ${pta_truck_predicted} ;;
    value_format: "$0"
  }
  measure: avg_pta {
    type: average
    sql: ${pta} ;;
  }
}
