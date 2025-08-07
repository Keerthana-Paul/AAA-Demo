view: aaa_status {
  sql_table_name: `sqsh-developer-pocs.aaa_demo.aaa_status` ;;

  dimension: member_id {
    primary_key: yes
    sql: ${TABLE}.Member_Id ;;
  }
  dimension: status {
    sql: ${TABLE}.Status ;;
  }
  dimension: work_order_number {
    sql: ${TABLE}.work_order_number ;;
  }
  measure: count {
    type: count
  }
}
