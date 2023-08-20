# abs
select
  100,
  -23,
  abs(100) as teste1,
  abs(-23) as teste2,
  abs(0) as teste3;

# rand
select
  rand() as teste1,
  10*rand() as teste2,
  100000*rand() as teste3;

select
  id,
  email,
  rand() as valor_aleatorio
from `bigquery-public-data.thelook_ecommerce.users`
where email is not null
order by valor_aleatorio
limit 10;

# sqrt
select
  sqrt(16),
  sqrt(81),
  #sqrt(-9)
  sqrt(0);

# pow
select
  pow(3, 2),
  pow(100, 0),
  pow(10, -2);

# log (base maior que 0 e diferente de 1; valor maior que zero)
select
  log(49, 7),
  #log(0, 3)
  #log(100, 1)
  #log(100, 0)
  log(100, 0.01);

# round
select
  round(1.64, 1) as teste1,
  round(1.65, 1) as teste2,
  round(1.66, 1) as teste3,
  round(numeric "1.64", 1) as teste4,
  round(numeric "1.65", 1) as teste5;

select
  avg(retail_price) as media_preco,
  round(avg(retail_price), 2) as teste1,
  round(avg(retail_price), 0) as teste2,
  round(cast(avg(retail_price) as NUMERIC), 8) as teste4
from bigquery-public-data.thelook_ecommerce.products;

# mod
select
  mod(4, 2),
  #mod(4, 0)
  mod(-10, 5),
  mod(-10, -5),
  mod(7, 2);

select
  id,
  email,
  case
    when mod(id, 2) = 0 then 'Par'
    when mod(id, 2) > 0 then 'Ímpar'
  end as grupo
from bigquery-public-data.thelook_ecommerce.users
order by id;

WITH persea as (
  SELECT
    tree_id,
    species,
    rand() as valor_aleatorio
  FROM `bigquery-public-data.san_francisco_trees.street_trees`
  where species like '%Persea americana%'
  order by 3
  limit 50),

magnolia as (
  SELECT
    tree_id,
    species,
    rand() as valor_aleatorio
  FROM `bigquery-public-data.san_francisco_trees.street_trees`
  where species like '%Magnolia grandiflora%'
  order by 3
  limit 50)

select
  *
from persea

union all

select
  *
from magnolia
