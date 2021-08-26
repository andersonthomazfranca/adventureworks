with dados_fonte as (
    select *
    from {{ source('adventureworkserp', 'salesterritory')}}
)
select * from dados_fonte