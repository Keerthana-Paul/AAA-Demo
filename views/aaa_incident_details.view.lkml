view: aaa_incident_details {
  sql_table_name: `sqsh-developer-pocs.aaa_demo.aaa_incident_details` ;;

  dimension: breakdown_location_latitude {
    type: number
    hidden: yes
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
  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }
  dimension: vehicle_id {
    type: string
    sql: ${TABLE}.Vehicle_Id ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  set: detail {
    fields: [vehicle_id,member_id,description_of_the_problem_code,breakdown_location,state,country]}

}
