with dados_fonte as (
    select
        row_number() over (order by salesreasonid) as sk_motivo_venda, -- chave autoincremental
        salesreasonid as id_motivo_venda,
        name as motivo,
        reasontype as tipo_motivo,
        modifieddate as data_modificacao
    from {{ source('adventureworkserp', 'salesreason')}}
)
select * from dados_fonte