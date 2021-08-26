with dados_fonte as (
    select *
    from {{ source('adventureworkserp', 'stateprovince')}}
)
select * from dados_fonte