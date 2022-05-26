view: events {
  sql_table_name: "DBT_PROD"."SNOWPLOW_WEB_STRUCTURED_EVENTS"
    ;;

  # dimension: app_id {
  #   type: string
  #   sql: ${TABLE}."APP_ID" ;;
  # }

  # dimension: br_colordepth {
  #   type: string
  #   sql: ${TABLE}."BR_COLORDEPTH" ;;
  # }

  # dimension: br_lang {
  #   type: string
  #   sql: ${TABLE}."BR_LANG" ;;
  # }

  # dimension: br_renderengine {
  #   type: string
  #   sql: ${TABLE}."BR_RENDERENGINE" ;;
  # }

  # dimension: br_viewheight {
  #   type: number
  #   sql: ${TABLE}."BR_VIEWHEIGHT" ;;
  # }

  # dimension: br_viewwidth {
  #   type: number
  #   sql: ${TABLE}."BR_VIEWWIDTH" ;;
  # }

  # dimension_group: collector_tstamp {
  #   type: time
  #   timeframes: [
  #     raw,
  #     time,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     year
  #   ]
  #   sql: ${TABLE}."COLLECTOR_TSTAMP" ;;
  # }

  dimension_group: derived_tstamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."DERIVED_TSTAMP" ;;
  }

  # dimension: doc_height {
  #   type: number
  #   sql: ${TABLE}."DOC_HEIGHT" ;;
  # }

  # dimension: doc_width {
  #   type: number
  #   sql: ${TABLE}."DOC_WIDTH" ;;
  # }

  dimension: domain_sessionid {
    hidden:  yes
    type: string
    sql: ${TABLE}."DOMAIN_SESSIONID" ;;
  }

  # dimension: domain_sessionidx {
  #   type: number
  #   sql: ${TABLE}."DOMAIN_SESSIONIDX" ;;
  # }

  # dimension: domain_userid {
  #   type: string
  #   sql: ${TABLE}."DOMAIN_USERID" ;;
  # }

  # dimension_group: dvce_created_tstamp {
  #   type: time
  #   timeframes: [
  #     raw,
  #     time,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     year
  #   ]
  #   sql: ${TABLE}."DVCE_CREATED_TSTAMP" ;;
  # }

  # dimension: event_id {
  #   type: string
  #   sql: ${TABLE}."EVENT_ID" ;;
  # }

  # dimension: event_name {
  #   type: string
  #   sql: ${TABLE}."EVENT_NAME" ;;
  # }

  # dimension: geo_city {
  #   type: string
  #   sql: ${TABLE}."GEO_CITY" ;;
  # }

  # dimension: geo_country {
  #   type: string
  #   sql: ${TABLE}."GEO_COUNTRY" ;;
  # }

  # dimension: geo_latitude {
  #   type: number
  #   sql: ${TABLE}."GEO_LATITUDE" ;;
  # }

  # dimension: geo_longitude {
  #   type: number
  #   sql: ${TABLE}."GEO_LONGITUDE" ;;
  # }

  # dimension: geo_region {
  #   type: string
  #   sql: ${TABLE}."GEO_REGION" ;;
  # }

  # dimension: geo_region_name {
  #   type: string
  #   sql: ${TABLE}."GEO_REGION_NAME" ;;
  # }

  # dimension: geo_timezone {
  #   type: string
  #   sql: ${TABLE}."GEO_TIMEZONE" ;;
  # }

  # dimension: geo_zipcode {
  #   type: string
  #   sql: ${TABLE}."GEO_ZIPCODE" ;;
  # }

  # dimension: mkt_campaign {
  #   type: string
  #   sql: ${TABLE}."MKT_CAMPAIGN" ;;
  # }

  # dimension: mkt_clickid {
  #   type: string
  #   sql: ${TABLE}."MKT_CLICKID" ;;
  # }

  # dimension: mkt_content {
  #   type: string
  #   sql: ${TABLE}."MKT_CONTENT" ;;
  # }

  # dimension: mkt_medium {
  #   type: string
  #   sql: ${TABLE}."MKT_MEDIUM" ;;
  # }

  # dimension: mkt_network {
  #   type: string
  #   sql: ${TABLE}."MKT_NETWORK" ;;
  # }

  # dimension: mkt_source {
  #   type: string
  #   sql: ${TABLE}."MKT_SOURCE" ;;
  # }

  # dimension: mkt_term {
  #   type: string
  #   sql: ${TABLE}."MKT_TERM" ;;
  # }

  # dimension: network_userid {
  #   type: string
  #   sql: ${TABLE}."NETWORK_USERID" ;;
  # }

  # dimension: os_timezone {
  #   type: string
  #   sql: ${TABLE}."OS_TIMEZONE" ;;
  # }

  # dimension: page_referrer {
  #   type: string
  #   sql: ${TABLE}."PAGE_REFERRER" ;;
  # }

  # dimension: page_title {
  #   type: string
  #   sql: ${TABLE}."PAGE_TITLE" ;;
  # }

  # dimension: page_url {
  #   type: string
  #   sql: ${TABLE}."PAGE_URL" ;;
  # }

  # dimension: page_urlfragment {
  #   type: string
  #   sql: ${TABLE}."PAGE_URLFRAGMENT" ;;
  # }

  # dimension: page_urlhost {
  #   type: string
  #   sql: ${TABLE}."PAGE_URLHOST" ;;
  # }

  # dimension: page_urlpath {
  #   type: string
  #   sql: ${TABLE}."PAGE_URLPATH" ;;
  # }

  # dimension: page_urlquery {
  #   type: string
  #   sql: ${TABLE}."PAGE_URLQUERY" ;;
  # }

  # dimension: page_urlscheme {
  #   type: string
  #   sql: ${TABLE}."PAGE_URLSCHEME" ;;
  # }

  dimension: page_view_id {
    hidden: yes
    type: string
    sql: ${TABLE}."PAGE_VIEW_ID" ;;
  }

  # dimension: page_view_in_session_index {
  #   type: number
  #   sql: ${TABLE}."PAGE_VIEW_IN_SESSION_INDEX" ;;
  # }

  # dimension: refr_medium {
  #   type: string
  #   sql: ${TABLE}."REFR_MEDIUM" ;;
  # }

  # dimension: refr_source {
  #   type: string
  #   sql: ${TABLE}."REFR_SOURCE" ;;
  # }

  # dimension: refr_term {
  #   type: string
  #   sql: ${TABLE}."REFR_TERM" ;;
  # }

  # dimension: refr_urlfragment {
  #   type: string
  #   sql: ${TABLE}."REFR_URLFRAGMENT" ;;
  # }

  # dimension: refr_urlhost {
  #   type: string
  #   sql: ${TABLE}."REFR_URLHOST" ;;
  # }

  # dimension: refr_urlpath {
  #   type: string
  #   sql: ${TABLE}."REFR_URLPATH" ;;
  # }

  # dimension: refr_urlquery {
  #   type: string
  #   sql: ${TABLE}."REFR_URLQUERY" ;;
  # }

  # dimension: refr_urlscheme {
  #   type: string
  #   sql: ${TABLE}."REFR_URLSCHEME" ;;
  # }

  dimension: se_action {
    label: "Event Action"
    type: string
    sql: ${TABLE}."SE_ACTION" ;;
  }

  dimension: se_category {
    label: "Event Category"
    type: string
    sql: ${TABLE}."SE_CATEGORY" ;;
  }

  dimension: se_label {
    label: "Event Label"
    type: string
    sql: ${TABLE}."SE_LABEL" ;;
  }

  # dimension: se_property {
  #   type: string
  #   sql: ${TABLE}."SE_PROPERTY" ;;
  # }

  dimension: se_value {
    label: "Event Value"
    type: number
    sql: ${TABLE}."SE_VALUE" ;;
  }

  dimension: video_title {
    label: "video title"
    type: string
    sql: case when ${se_category} = 'video' then ${se_label} else null end;;

  }

  # dimension_group: start_tstamp {
  #   type: time
  #   timeframes: [
  #     raw,
  #     time,
  #     date,
  #     week,
  #     month,
  #     quarter,
  #     year
  #   ]
  #   sql: ${TABLE}."START_TSTAMP" ;;
  # }

  # dimension: user_id {
  #   type: string
  #   sql: ${TABLE}."USER_ID" ;;
  # }

  # dimension: user_ipaddress {
  #   type: string
  #   sql: ${TABLE}."USER_IPADDRESS" ;;
  # }

  # dimension: useragent {
  #   type: string
  #   sql: ${TABLE}."USERAGENT" ;;
  # }

  measure: events {
    type: count
  }

  measure: distinct_events {
    type: count_distinct
    sql: ${domain_sessionid};;
  }

  measure: unique_video_views{
    type: count_distinct
    sql: ${domain_sessionid};;
    filters: [se_category: "video"]
  }
  measure: video_view_25{
    label: "video watched 25%"
    type: count_distinct
    sql: ${domain_sessionid};;
    filters: [se_category: "video", se_value: "0.25"]
    }
  measure: video_view_50{
    label: "video watched 50%"
    type: count_distinct
    sql: ${domain_sessionid};;
    filters: [se_category: "video", se_value: "0.50"]
  }
  measure: video_view_75{
    label: "video watched 75%"
    type: count_distinct
    sql: ${domain_sessionid};;
    filters: [se_category: "video", se_value: "0.75"]
  }
  measure: video_view_100{
    label: "video watched 100%"
    type: count_distinct
    sql: ${domain_sessionid};;
    filters: [se_category: "video", se_value: "1"]
  }
  measure: video_view_through_rate{
    label: "video view through  %"
    type: number
    sql: 100*(${video_view_100} *1 +(${video_view_75}-${video_view_100})*.75
          +(${video_view_50} - ${video_view_75})*.5
          +(${video_view_25} - ${video_view_50})*.25) / NULLIF(${unique_video_views},0)
          ;;
    value_format: "0\"%\""
  }
}

# unique_events
# total events
# views
