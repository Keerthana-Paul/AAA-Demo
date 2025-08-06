view: aaa_status {
  sql_table_name: `sqsh-developer-pocs.aaa_demo.aaa_status` ;;

  dimension: member_id {
    type: string
    primary_key: yes
    sql: ${TABLE}.Member_Id ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }
  dimension: work_order_number {
    type: number
    sql: ${TABLE}.work_order_number ;;
  }
  measure: count {
    type: count
  }
}
