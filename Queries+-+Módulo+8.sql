# concat
select
  "Olá",
  "Mundo",
  concat("Olá", "Mundo"),
  concat("Olá", " ", "Mundo");

select
  id,
  first_name,
  last_name,
  concat(first_name, ' ', last_name) as nome_completo
from bigquery-public-data.thelook_ecommerce.users;

select
  o.order_id,
  concat('Quantidade total de itens no pedido: ', avg(o.num_of_item), ' - ', 'Receita total do pedido: ', round(sum(sale_price), 2)) as detalhe
from bigquery-public-data.thelook_ecommerce.orders o
join bigquery-public-data.thelook_ecommerce.order_items oi on o.order_id = oi.order_id
group by 1
order by 1;

# starts_with
select
  starts_with("Ciência de Dados", "C") as teste1,
  starts_with("Ciência de Dados", "c") as teste2,
  starts_with("Ciência de Dados", "Ciência") as teste3

select
  id,
  first_name
from bigquery-public-data.thelook_ecommerce.users
where starts_with(first_name, "Mi") is true;

select
  id,
  first_name
from bigquery-public-data.thelook_ecommerce.users
where starts_with(first_name, "Mi");

select
  id,
  first_name
from bigquery-public-data.thelook_ecommerce.users
where starts_with(first_name, "Mi") is false;

# lower e upper
select distinct
  repo_name,
  lower(repo_name) as lower_repo_name
from bigquery-public-data.github_repos.sample_repos
where lower(repo_name) like '%python%'

select distinct
  repo_name,
  upper(repo_name) as upper_repo_name
from bigquery-public-data.github_repos.sample_repos
where upper(repo_name) like '%PYTHON%'

# INIT CAP
select
  id,
  first_name,
  last_name,
  concat(first_name, ' ', last_name) as nome_completo,
  lower(concat(first_name, ' ', last_name)) as nome_completo_1,
  upper(concat(first_name, ' ', last_name)) as nome_completo_2,
  INITCAP(concat('cliente ', first_name, ' ', last_name)) as nome_completo_3,
from bigquery-public-data.thelook_ecommerce.users;

# split
select
  split('Por favor, parem de atribuir a mim as frases que eu nunca pronunciei - Albert Einstein', ' ') AS PALAVRAS;

select
  split('Por favor, parem de atribuir a mim as frases que eu nunca pronunciei - Albert Einstein', ' ')[ordinal(1)] AS primeira,
  split('Por favor, parem de atribuir a mim as frases que eu nunca pronunciei - Albert Einstein', ' ')[ordinal(2)] AS segunda,
  split('Por favor, parem de atribuir a mim as frases que eu nunca pronunciei - Albert Einstein', ' ')[ordinal(3)] AS terceira

select distinct
  split(email, "@")[ordinal(2)] as dominio
from bigquery-public-data.thelook_ecommerce.users;

# TRIM
select
  trim('CPF: 123.456.789-0', 'CPF: '),
  ltrim('CPF: 123.456.789-0', 'CPF: '),
  rtrim('CPF: 123.456.789-0', 'CPF: '),
  trim('***(11) 9 1234-4567***', '*') as telefone,
  trim('      Rio de Janeiro             ', ' ') as cidade;

# replace
select
  *,
  replace(name, "/New Jersey NY/NJ", " NY"),
  REPLACE(replace(name, "/New Jersey NY/NJ", " NY"), "Authority ", "")
from bigquery-public-data.thelook_ecommerce.distribution_centers

/*
1)  Ache a tabela “users” no dataset “thelook_ecommerce”, no projeto de dados públicos do BigQuery. Traga como resultado um único campo distinto com as informações de forma organizada dos campos street_address + city + state + country + postal_code.
*/
select distinct
  concat(street_address, ' - ', city, '/', state, ', ', country, ', CEP: ', postal_code) as endereco
from bigquery-public-data.thelook_ecommerce.users;

/*
2)  Ache a tabela “top_terms” no dataset “google_trends”, e descubra os termos, suas posições no rank e áreas de pesquisa para os termos começados com “N” no dia 2023-04-30. Obs.: não se esqueça de colocar essa restrição de data no where, pois a tabela é grande e particionada (processa somente a data que você colocar). Ordene por rank.
*/
SELECT
  term,
  rank,
  dma_name
FROM bigquery-public-data.google_trends.top_terms
where starts_with(term, "N") 
  and date(week) = "2023-04-30"
order by rank;

/*
3)  Ache a tabela “stations” do dataset “new_york_subway” e substitua no campo “station_name”, a palavra “St” por “Street” nos casos em que o final do nome da estação termine em “St” e “Av” por “Avenue” nos casos em que o final do nome da estação termine em “Av”. Traga como resultado somente o campo “station_name” de forma distinta e restringindo apenas as linhas que tenham “St” ou “Av” no nome.
*/
select distinct
  case
    when station_name like "%St" then replace(station_name, "St", "Street")
    when station_name like "%Av" then replace(station_name, "Av", "Avenue")
  end as station_name
from bigquery-public-data.new_york_subway.stations
where station_name like "%St" or station_name like '%Av';

/*
4)  [DESAFIO] No mesmo dataset do item anterior e tabela “stop_times”, extraia somente o nome do dia da semana do campo “trip_id”, considerando somente sábado e domingo como resposta (utilize como restrição no where, usando lower e upper também). Traga também o “trip_id” no select.
*/
select distinct
  trip_id,
  case 
    when split(trip_id, "-")[ordinal(3)] = 'SI017' then split(trip_id, "-")[ordinal(4)]
    else split(trip_id, "-")[ordinal(3)] 
  end as dia
from bigquery-public-data.new_york_subway.stop_times
where lower(trip_id) like '%sunday%' or UPPER(trip_id) like '%SATURDAY%';
