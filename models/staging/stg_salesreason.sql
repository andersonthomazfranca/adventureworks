with dados_fonte as (
    select *
    from {{ source('adventureworkserp', 'salesreason')}}
)
select * from dados_fonte