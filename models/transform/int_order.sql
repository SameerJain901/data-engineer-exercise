-- Filter the data to exclude any orders with a status of 'Cancelled'.
-- Setup the config for the view and partition the table by `OrderDate`
-- OrderStatus column is filtered where value `Cancelled` is excluded
-- File format: Parquet

{{
    config(
        materialized = "incremental",
        file_format = "parquet",
        partition_by = {
            "field": "OrderDate",
            "data_type": "date",
        }
    )

}}

with transformed as (

    select 
        OrderId, 
        Product,
        QuantityOrdered,
        PriceEach,
        OrderDate,
        CityStore,
        Category,
        OrderStatus,
        QuantityOrdered * PriceEach as TotalAmount

    from {{ ref("stage_sales_orders")}}
    where OrderStatus <> 'Cancelled'
)

select * from transformed


