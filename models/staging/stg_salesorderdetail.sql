with dados_fonte as (
    select
        salesorderid as id_pedido,
        salesorderdetailid id_detalhe_pedido,
        productid as id_produto,
        orderqty as quantidade_produto,
        unitprice as preco_unit,
        unitpricediscount as desconto,
        modifieddate as data_modificacao,
        carriertrackingnumber as rastreamento_transportadora,
        specialofferid as id_oferta
    from {{ source('adventureworkserp', 'salesorderdetail')}}
)
select * from dados_fonte