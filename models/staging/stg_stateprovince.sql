with dados_fonte as (
    select
        row_number() over (order by stateprovinceid) as sk_provincia, -- chave autoincremental
        stateprovinceid as id_provincia,
        territoryid as id_territorio,
        stateprovince.name as nome_estado,
        stateprovincecode as codigo_estado,
        countryregioncode pais_estado,
        modifieddate as data_modificacao
    from {{ source('adventureworkserp', 'stateprovince')}}
)
select * from dados_fonte