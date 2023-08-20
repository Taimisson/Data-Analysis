#### PARTE 1

# current_date, current_datetime, current_timestamp
select
  current_date() as ex1,
  current_timestamp() as ex2,
  current_datetime() as ex3,
  current_datetime("America/Sao_Paulo") as ex4,
  current_datetime("America/Los_Angeles") as ex5,
  current_date("America/Sao_Paulo") as ex6,
  current_date("Asia/Tokyo") as ex7,
  current_timestamp as ex8;

select
  *
from bigquery-public-data.thelook_ecommerce.orders
where date(created_at) = current_date() - interval 5 day;

select
  *
from bigquery-public-data.thelook_ecommerce.orders
where date(created_at) = date_sub(current_date(), interval 5 day);

# date, datetime, timestamp
select
  date(2023, 02, 01) as ex1,
  date "2023-02-01" as ex2;

select
  datetime(2022, 7, 20, 12, 34, 47) as ex1,
  datetime "2022-07-20 12:34:47" as ex2,
  datetime "2022-07-20T12:34:47" as ex3,
  current_timestamp as ex4,
  datetime(current_timestamp) as ex5,
  datetime(current_timestamp, "America/Sao_Paulo") as ex6,
  datetime(current_date) as ex7;

select
  timestamp("2022-07-20 12:34:47") as ex1,
  timestamp("2022-07-20 12:34:47 America/Sao_Paulo") as ex2,
  timestamp("2022-07-20 12:34:47", "America/Sao_Paulo") as ex3,
  timestamp(current_datetime) as ex4,
  timestamp(current_date) as ex5

#### PARTE 2

# extract
select
  current_date as ex1,
  extract(month from current_date) as mes,
  extract(dayofyear from current_date) as doy,
  current_timestamp as ex2,
  extract(hour from current_timestamp) as h;

select
  count(order_id) as pedidos,
  extract(quarter from created_at) as trimestre
from bigquery-public-data.thelook_ecommerce.orders
where date(created_at) between "2022-01-01" and "2022-12-31"
group by 2
order by 2;

# DATE_ADD, DATETIME_ADD, TIMESTAMP_ADD
select
  current_date as t1,
  date_add(current_date, interval 10 day) as t2,
  date_add(current_date, interval 1 month) as t3,
  current_timestamp() as t4,
  timestamp_add(current_timestamp, interval 2 hour) as t5;

select
  current_date as t1,
  date_sub(current_date, interval 10 day) as t2,
  date_sub(current_date, interval 1 month) as t3,
  current_timestamp() as t4,
  timestamp_sub(current_timestamp, interval 2 hour) as t5;

select
  sum(num_of_item) as qtde_itens
from bigquery-public-data.thelook_ecommerce.orders
where date(created_at) >= date_sub(current_date, interval 5 day);

select
  sum(num_of_item) as qtde_itens
from bigquery-public-data.thelook_ecommerce.orders
where date(created_at) between date_sub(current_date, interval 5 day) and current_date;

# DATE_DIFF, DATETIME_DIFF, TIMESTAMP_DIFF
SELECT
  date_diff('2022-10-05', '2022-10-01', day) as ex1,
  datetime_diff('2022-10-05T21:00:00', '2022-10-05T14:00:00', HOUR) as ex2,
  timestamp_diff('2022-10-05 21:30:00', '2022-10-05 21:00:00', minute) as ex3;

select
  u.id,
  min(timestamp_diff(o.created_at, u.created_at, day)) as dias_ate_primeira_compra
from bigquery-public-data.thelook_ecommerce.orders o
join bigquery-public-data.thelook_ecommerce.users u on u.id = o.user_id
group by 1
order by 2 desc;

with dias as (
  select
    u.id,
    min(timestamp_diff(o.created_at, u.created_at, day)) as dias_ate_primeira_compra
  from bigquery-public-data.thelook_ecommerce.orders o
  join bigquery-public-data.thelook_ecommerce.users u on u.id = o.user_id
  group by 1
  order by 2 desc
) 

select
  avg(dias_ate_primeira_compra) as media_dias_ate_compra
from dias;

# format_date, format_datetime, format_timestamp
select
  format_date("%Y-%m", current_date) as month,
  format_timestamp("%R", current_timestamp) as horario;

select
  count(id) usuarios,
  format_timestamp("%Y-%m", created_at) as mes_cadastro
from bigquery-public-data.thelook_ecommerce.users
group by 2
order by 2 asc;

/* 
1)  Procure o dataset “thelook_ecommerce”. Calcule o tempo em dias da data de cadastro até a última compra de cada usuário.
*/
select
  u.id,
  max(timestamp_diff(o.created_at, u.created_at, day)) as dias_ate_ultima_compra
from bigquery-public-data.thelook_ecommerce.orders o
join bigquery-public-data.thelook_ecommerce.users u on u.id = o.user_id
group by 1
order by 2 desc;

/* 
2) Na mesma tabela, calcule o tempo em dias entre a primeira e a última compra de cada usuário.
*/
select
  user_id,
  timestamp_diff(max(created_at), min(created_at), day) as dias_entre_prim_ult
from bigquery-public-data.thelook_ecommerce.orders
group by 1
order by 2 desc;

/* 
3)  No mesmo dataset, e tabela de eventos, traga a quantidade de registros para cada usuário entre 06 de maio de 2023 - 73 dias e 09 de maio de 2023 nos eventos de carrinho e compra. Ordene por usuário e tipo do evento.
*/
select
  user_id,
  event_type,
  count(distinct id) as eventos
from bigquery-public-data.thelook_ecommerce.events
where event_type in ('cart', 'purchase') and date(created_at) between date_sub('2023-05-06', interval 73 day) and '2023-05-09'
  and user_id is not null
group by 1,2
order by user_id, event_type;

/* 
4) Ache o dataset “catalonian_mobile_coverage” e calcule a quantidade de sinais 4G recebidos no mês de março de 2016.
*/
SELECT  
  count(*) as qtde
FROM `bigquery-public-data.catalonian_mobile_coverage.mobile_data_2015_2017`
where net = "4G" and format_date("%Y-%m", date) = "2016-03"
