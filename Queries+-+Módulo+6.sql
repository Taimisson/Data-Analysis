# COUNT
select
  count(*) as qtde_usuarios,
  count(id) as qtde_usuarios_2,
  count(distinct id) as qtde_usuarios_3,
from `bigquery-public-data.thelook_ecommerce.users`;

select
  count(distinct status) qtde_status
from `bigquery-public-data.thelook_ecommerce.orders`;

select
  count(distinct order_id) qtde_pedidos,
  date(created_at) dia
from `bigquery-public-data.thelook_ecommerce.orders`
group by dia
order by dia asc;

select
  count(distinct order_id) qtde_pedidos,
  extract(year from created_at) ano
from `bigquery-public-data.thelook_ecommerce.orders`
group by ano
order by ano asc;

# MAX/MIN
SELECT
  max(retail_price) as preco_maximo_produto
from `bigquery-public-data.thelook_ecommerce.products`;

SELECT
  min(retail_price) as preco_minimo_produto
from `bigquery-public-data.thelook_ecommerce.products`;

SELECT
  max(retail_price) as preco_maximo_produto,
  min(retail_price) as preco_minimo_produto
from `bigquery-public-data.thelook_ecommerce.products`;

SELECT
  round(max(retail_price), 2) as preco_maximo_produto,
  round(min(retail_price), 2) as preco_minimo_produto,
  c.name
from `bigquery-public-data.thelook_ecommerce.products` p  
join `bigquery-public-data.thelook_ecommerce.distribution_centers` c on p.distribution_center_id = c.id
group by name
order by 2;

SELECT
  max(created_at) as data_de_cadastro_mais_recente,
  min(created_at) as data_de_cadastro_mais_antiga
from `bigquery-public-data.thelook_ecommerce.users`;

# SUM
select
  round(sum(sale_price), 2) as receita
from `bigquery-public-data.thelook_ecommerce.order_items`
where status = "Complete";

select
  round(sum(sale_price), 2) as receita,
  format_date("%Y-%m", created_at) as mes
from `bigquery-public-data.thelook_ecommerce.order_items`
where status = "Complete"
group by mes
order by mes;

select
  sum(if(country="Brasil", 1, 0)) as cadastrados_brasil,
  count(case when country='Brasil' then id end) as cadastrados_brasil_2
from `bigquery-public-data.thelook_ecommerce.users`;

# AVG (AVERAGE = MÉDIA)
select
  round(avg(sale_price), 2) as ticket_medio,
  format_date("%Y-%m", created_at) as mes
from `bigquery-public-data.thelook_ecommerce.order_items`
where status = "Complete"
group by mes
order by mes;

/* 1) Retorne em uma só consulta os valores de média, máximo, mínimo, contagem e soma do campo “attendance” da tabela “schedules”, dataset “baseball”, mesmo que a contagem e a soma de torcedores nos estádios não tenham significado para análise de negócio. */
select
  avg(attendance) media,
  max(attendance) maximo,
  min(attendance) minimo,
  count(attendance) contagem,
  sum(attendance) soma
from `bigquery-public-data.baseball.schedules`
where status = "closed";

/* 2) No mesmo dataset e tabela do exercício anterior, retornar a quantidade de jogos disputados por cada time em casa por ano e também a soma de minutos jogados em casa por ano. Ordenar de forma decrescente pelo ano e depois crescente pelo nome do time. */
select
  count(gameId) as jogos,
  sum(duration_minutes) as soma_minutos,
  homeTeamName,
  year
from `bigquery-public-data.baseball.schedules`
where status = "closed"
group by 3,4
order by year desc, homeTeamName asc;

/* 3) No dataset “austin_bikeshare”, descubra qual a quantidade de viagens realizadas em 2017 com duração de 30 minutos ou mais, somente de estações (tanto de partida quanto de chegada) que estão atualmente ativas. */
select
  count(trip_id) as viagens
from `bigquery-public-data.austin_bikeshare.bikeshare_trips` t
join `bigquery-public-data.austin_bikeshare.bikeshare_stations` si on t.start_station_id = si.station_id
join `bigquery-public-data.austin_bikeshare.bikeshare_stations` sf on t.end_station_id = cast(sf.station_id as string)
where extract(year from start_time) = 2017 
  and duration_minutes >= 30
  and si.status = "active"
  and sf.status = "active";

/* 4) No mesmo dataset anterior, calcule a média de duração das viagens por tipo de cliente (“subscriber_type”) por ano. */
select
  round(avg(duration_minutes), 1) as media_duracao_viagens,
  subscriber_type,
  extract(year from start_time) as year
from `bigquery-public-data.austin_bikeshare.bikeshare_trips` t
group by 2,3
order by year;
