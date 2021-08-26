with dados_fonte as (
    select
        row_number() over (order by businessentityid) as sk_funcionario, -- chave autoincremental
        businessentityid as id_funcionario,
        loginid as id_login,
        birthdate as data_nasc,
        currentflag as bandeira_atual,
        gender as sexo,
        hiredate as data_contratacao,
        jobtitle as cargo,
        maritalstatus as estado_civil,
        modifieddate as data_modificacao,
        nationalidnumber as codigo_nacionalidade,
        salariedflag as bandeira_salario,
        sickleavehours as horas_licenca_medica,
        vacationhours as horas_ferias
    from {{ source('adventureworkserp', 'employee')}}
)
select * from dados_fonte