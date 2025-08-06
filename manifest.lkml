project_name: "aaa_demo"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }

# in manifest.lkml

# LAMS
# rule: prod_connection {
#  description: "Models must use prod connection"
#  match: "$.model.*"
#  expr_rule: ( === ::match:connection "prod" ) ;;
# }
