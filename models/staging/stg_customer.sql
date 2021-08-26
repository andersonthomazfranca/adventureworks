with dados_fonte as (
    select
        row_number() over (order by customerid) as sk_id_cliente, -- chave autoincremental
        customerid as id_cliente,
        personid as id_pessoa,
        territoryid as id_territorio,
        storeid as id_loja,
        modifieddate as data_modificacao
    from {{ source('adventureworkserp', 'customer')}}
)
select * from dados_fonte