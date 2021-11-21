WITH joined_table AS (
    SELECT *
    FROM {{ source('order_customer_joined', 'customer') }}
    LEFT JOIN {{ source('order_customer_joined', 'orders') }}
    ON {{ source('order_customer_joined', 'customer') }}.C_Custkey = 
    {{ source('order_customer_joined', 'orders') }}.O_Custkey
)

SELECT * FROM joined_table