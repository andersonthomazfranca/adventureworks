with dados_fonte as (
    select
        row_number() over (order by businessentityid) as sk_pessoa_negocio, -- chave autoincremental
        businessentityid as id_pessoa_negocio,
        firstname as nome,
        lastname as sobrenome,
        persontype as tipo_pessoa,
        modifieddate as data_modificacao
    from {{ source('adventureworkserp', 'person')}}
)
select * from dados_fonte