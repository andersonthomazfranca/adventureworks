with dados_fonte as (
    select
        row_number() over (order by productid) as sk_produto, -- chave autoincremental
        productid as id_produto,
        productmodelid as id_modelo_produto,
        productsubcategoryid as id_categoria_produto,
        name as nome_produto,
        productline as linha_produto,
        productnumber as numero_produto,
        class as classe,
        color as cor,
        standardcost as preco_custo,
        listprice as preco_unitario,
        size as tamanho,
        sizeunitmeasurecode as  unid_tamanho,
        weight as peso,
        weightunitmeasurecode as unid_peso,
        style as estilo,
        reorderpoint as ponto_reposicao,
        safetystocklevel as nivel_seguranca,
        sellstartdate as data_inicio_vendas,
        sellenddate as data_termino_vendas,
        daystomanufacture as tempo_fabricacao,
        modifieddate as data_modificacao,
    from {{ source('adventureworkserp', 'product')}}
)
select * from dados_fonte