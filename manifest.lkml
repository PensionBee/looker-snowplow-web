constant: connection {
  value: "snowflake_datawarehouse"
  export: override_required
}

constant: schema {
  value: "dbt_prod_derived"
  export: override_optional
}

constant: page_views_table {
  value: "snowplow_web_page_views"
  export: override_optional
}

constant: sessions_table {
  value: "snowplow_web_sessions"
  export: override_optional
}

constant: users_table {
  value: "snowplow_web_users"
  export: override_optional
}

constant: model_name {
  value: "snowplow_looker"
  export: override_optional
}
