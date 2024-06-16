{{config (materialized = 'view')}}
WITH src_hosts AS (
  SELECT
    *
  FROM
    {{ ref('src_hosts') }}
)
SELECT
HOST_ID, nvl(HOST_NAME, 'ANONYMOUS') as HOST_NAME , IS_SUPERHOST, CREATED_AT, UPDATED_AT
FROM
  src_hosts