with dados_fonte as (
    select
        row_number() over (order by creditcardid) as sk_cartao_credito, -- chave autoincremental
        creditcardid as id_cartao_credito,
        cardtype as tipo_cartao,
        cardnumber as numero_cartao,
        expmonth as mes_venc,
        expyear as ano_venc,
        modifieddate as data_modificacao
    from {{ source('adventureworkserp', 'creditcard')}}
)
select * from dados_fonte