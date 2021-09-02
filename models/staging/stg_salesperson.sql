with dados_fonte as (
    select
        row_number() over (order by businessentityid) as sk_func_vendas, -- chave autoincremental
        businessentityid as id_func_vendas,
        territoryid as id_territorio,
        salesquota as cota_venda,
        salesytd as vendas_acumulado_ano,
        saleslastyear as vendas_ultimo_ano,
        commissionpct as comissao,
        bonus,
        modifieddate as data_modificacao
    from {{ source('adventureworkserp', 'salesperson')}}
)
select * from dados_fonte