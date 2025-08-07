view: aaa_vehicle_details {
  sql_table_name: `sqsh-developer-pocs.aaa_demo.aaa_vehicle_details` ;;

  dimension: member_id {
    type: string
    primary_key: yes
    sql: ${TABLE}.Member_Id ;;
  }
  dimension: vehice_type {
    type: string
    sql: ${TABLE}.Vehice_Type ;;
  }
  dimension: vehicle_id {
    type: string
    hidden: yes
    sql: ${TABLE}.Vehicle_Id ;;
  }
  measure: count {
    type: count
  }
}
