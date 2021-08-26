with dados_fonte as (
    select
        row_number() over (order by countryregioncode) as sk_codigo_regiao_pais, -- chave autoincremental
        countryregioncode as id_codigo_regiao_pais,
        name as nome,
        modifieddate as data_modificacao
    from {{ source('adventureworkserp', 'countryregion')}}
)
select * from dados_fonte