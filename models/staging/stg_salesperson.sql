with dados_fonte as (
    select *
    from {{ source('adventureworkserp', 'salesperson')}}
)
select * from dados_fonte