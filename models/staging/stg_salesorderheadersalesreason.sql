with dados_fonte as (
    select
        salesorderid as id_pedido,
        salesreasonid as id_motivo_venda,
        modifieddate as data_modificacao
    from {{ source('adventureworkserp', 'salesorderheadersalesreason')}}
)
select * from dados_fonte