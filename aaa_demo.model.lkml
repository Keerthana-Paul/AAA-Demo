connection: "aaa"

include: "/views/*.view.lkml"

explore: aaa_incident_details {}

# explore: aaa_master {}

explore:  aaa_status {}

explore: aaa_tracking {}

explore: aaa_vehicle_details {}

explore: aaa_master{
  label: "Master - Tracking"
  join: aaa_tracking {
    type: left_outer
    relationship: many_to_one
    sql_on: ${aaa_master.work_order_number} = ${aaa_tracking.work_order_number} ;;
  }
}
