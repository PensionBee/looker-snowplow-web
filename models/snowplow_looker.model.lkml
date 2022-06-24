connection: "@{connection}"

# label: "Snowplow Looker Model"

include: "/views/*.view"
# include: "/dashboards/*.dashboard.lookml"

# # datagroup: snowplow_looker_default_datagroup {
# #   max_cache_age: "1 hour"
# # }

# persist_with: snowplow_looker_default_datagroup

explore: events {}

explore: sessions {
  label: "Sessions"
  join: users {
    type: left_outer
    sql_on: ${sessions.domain_userid} = ${users.domain_userid} ;;
    relationship: many_to_one
  }
}

# explore: page_views {
#   label: "Website Analytics"
#   join: sessions {
#     type:  left_outer
#     relationship: many_to_one
#     sql_on: ${page_views.domain_sessionid} = ${sessions.domain_sessionid} ;;
#   }
#   join: users  {
#     type:  left_outer
#     relationship: many_to_one
#     sql_on:  ${page_views.domain_userid} = ${users.domain_userid} ;;
#   }
#   join: events {
#     type:  left_outer
#     relationship: many_to_one
#     sql_on: ${page_views.domain_sessionid} = ${events.domain_sessionid}
#             and ${page_views.page_view_id} = ${events.page_view_id} ;;
#   }
# }

# explore: users  {
#   label: "Users"
# }
