with dados_fonte as (
    select
        row_number() over (order by addressid) as sk_endereco, -- chave autoincremental
        addressid as id_endereco,
        stateprovinceid as id_estadoprovicia,
        addressline1 as endereco,
        city as cidade,
        modifieddate as data_modificacao
    from {{ source('adventureworkserp', 'address')}}
)
select * from dados_fonte