view: aaa_master {
  sql_table_name: `sqsh-developer-pocs.aaa_demo.aaa_master` ;;

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
    hidden: yes
    primary_key: yes
    sql: ${TABLE}.Member_Id ;;
  }
  dimension: number {
    type: number
    sql: ${TABLE}.`No` ;;
  }
  dimension: partner_id {
    type: string
    sql: ${TABLE}.Partner_ID ;;
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
    sql: cast(${TABLE}.work_order_number as string) ;;
  }
  dimension: work_order_number_5 {
    type: string
    sql: cast(${TABLE}.work_order_number_5 as string) ;;
  }
  measure: count {
    type: count
  }
}
