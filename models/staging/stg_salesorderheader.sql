with dados_fonte as (
    select *
    from {{ source('adventureworkserp', 'salesorderheader')}}
)
select * from dados_fonte