with dados_fonte as (
    select
        row_number() over (order by territoryid) as sk_territorio, -- chave autoincremental
        territoryid as id_territorio,
        salesterritory.name as pais,
        countryregioncode as codigo_pais,
        salesterritory.group as continente,
        salesytd as vendas_ano_atual,
        saleslastyear as vendas_ultimo_ano,
        costytd as custo_ano_atual,
        costlastyear as custo_ultimo_ano,
        modifieddate as data_modificacao
    from {{ source('adventureworkserp', 'salesterritory')}}
)
select * from dados_fonte