with dados_fonte as (
    select
        salesorderid as id_pedido,
        customerid as id_cliente,
        salespersonid as id_pessoa,
        creditcardid as id_cartaocredito,
        shipmethodid id_tipoentrega,
        shiptoaddressid as id_endereco_entrega,
        billtoaddressid as id_endereco_cobrenca,
        territoryid as id_territorio,
        orderdate as data_pedido,
        shipdate as data_entrega,
        accountnumber numero_conta,
        status as status_pedido,
        subtotal,
        totaldue as total_devido,
        duedate as data_vencimento,
        freight as frete,
        modifieddate as data_modificacao,
        taxamt
    from {{ source('adventureworkserp', 'salesorderheader')}}
)
select * from dados_fonte