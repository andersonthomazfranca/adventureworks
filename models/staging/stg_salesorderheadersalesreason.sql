with dados_fonte as (
    select *
    from {{ source('adventureworkserp', 'salesorderheadersalesreason')}}
)
select * from dados_fonte