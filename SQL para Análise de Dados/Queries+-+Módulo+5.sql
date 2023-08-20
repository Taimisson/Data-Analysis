# SELECT
SELECT
 4 AS coluna_1,
 10 as coluna_2,
 "Meu nome é Caio" as nome,
 'Meu nome é Caio' as nome_2,
 5*3 as multiplicacao,
 20/4 as divisao;

SELECT
  NAME
FROM ecommerce.categories;

SELECT
  NAME
FROM `cursos-386113.ecommerce.categories`;

select
  name,
  price
from ecommerce.products;

select name,price from ecommerce.products;

# Distinct
select distinct
  category_id
from ecommerce.products;

select distinct
  first_name
from ecommerce.customers;

select
  count(distinct first_name) as nomes_distintos
from ecommerce.customers;

# aritméticos
select
  7 + 7 as soma,
  12 - 4 as subtracao,
  73 * 4 as multiplicacao,
  1 / 3 as divisao;

# comparação
  5 = 5,
  1 > 10,
  100 > 3,
  60 <= 60,
  17 != 17;

# between
select
  10 between 8 and 15,
  -13 between 0 and 100;

select
  *
from ecommerce.products
where price between 30 and 80;

select
  3 between 3 and 5,
  5 between 3 and 5;

# like
select
  *
from ecommerce.customers
where first_name like 'J%';

select
  *
from ecommerce.customers
where first_name like '%r';

select
  *
from ecommerce.customers
where first_name like 'J%' and first_name like '%r';

select
  *
from ecommerce.customers
where first_name like 'J%r';

# in
select
  *
from ecommerce.products
where price in (10, 11, 15);

select
  *
from ecommerce.customers
where state in ("Acre", "Ceará");

# is null e is not null
select
  *
from ecommerce.customers
where street is null;

select
  *
from ecommerce.customers
where street is not null;

# is true e is not true/is false
select
  *
from `bigquery-public-data.chicago_crime.crime`
where domestic is true;

select
  *
from `bigquery-public-data.chicago_crime.crime`
where domestic is not true;

select
  *
from `bigquery-public-data.chicago_crime.crime`
where domestic is false;

# apelidos
select
  id,
  first_name as primeiro_nome
from ecommerce.customers;

select
  i.id,
  i.total_price
from ecommerce.items as i;

select
  p.name as nome_produto,
  c.name as nome_categoria
from ecommerce.products as p
join ecommerce.categories as c on p.category_id = c.id;

select
  products.name as nome_produto,
  categories.name as nome_categoria
from ecommerce.products 
join ecommerce.categories on products.category_id = categories.id;

# where
select
  *
from ecommerce.items 
where quantity = 1;

select
  *
from ecommerce.customers
where state = 'Bahia' and email is not null;

select
  *
from ecommerce.customers
where (state = 'Bahia' or state = 'Rio Grande do Sul
') and street is not null;

# case
select
  id,
  name,
  case 
    when name = "Cosméticos e Perfumaria" then "Sim, é categoria Cosméticos e Perfumaria"
  end as case1
from ecommerce.categories;

select
  id,
  name,
  case 
    when name = "Cosméticos e Perfumaria" then "Sim, é categoria Cosméticos e Perfumaria"
    when name = "Esporte e Lazer" then "Sim, é categoria Esporte e Lazer"
    else "Não encontrou as categorias acima"
  end as case1
from ecommerce.categories;

SELECT 
  id,
  name,
  case
    when id between 0 and 5 then 'Primeiro Verdadeiro'
    when id between 3 and 5 then "Segundo Verdadeiro"
    when id between 3 and 7 then "Terceiro Verdadeiro"
  end as case2
FROM `bigquery-public-data.thelook_ecommerce.distribution_centers`;

# if -> if(cond, caso seja verd, caso seja falso) -> if(cond, caso seja verd, if(cond, caso seja verd, caso seja falso))
select
  id,
  name,
  if(name = "Cosméticos e Perfumaria", "Sim, é categoria Cosméticos e Perfumaria", if(name = "Esporte e Lazer", "Sim, é categoria Esporte e Lazer", "Não encontrou as categorias acima")) as if1
from ecommerce.categories;

# coalesce -> coalesce(pam1, pam2, ..., pamn) 
select
  id,
  first_name,
  additionals,
  coalesce(additionals, "Ops, o complemento é nulo!") as complemento
from ecommerce.customers
limit 10;

# group by e order by
SELECT DISTINCT
  status
FROM `bigquery-public-data.thelook_ecommerce.orders`;

SELECT
  status
FROM `bigquery-public-data.thelook_ecommerce.orders`
GROUp BY status;

SELECT
  status
FROM `bigquery-public-data.thelook_ecommerce.orders`
GROUp BY 1;

SELECT
  count(distinct order_id) as numero_pedidos,
  date(created_at) as dia
FROM `bigquery-public-data.thelook_ecommerce.orders`
GROUp BY 2;

SELECT
  count(distinct order_id) as numero_pedidos,
  date(created_at) as dia
FROM `bigquery-public-data.thelook_ecommerce.orders`
GROUp BY dia
ORDER BY dia asc;

SELECT
  count(distinct order_id) as numero_pedidos,
  date(created_at) as dia
FROM `bigquery-public-data.thelook_ecommerce.orders`
GROUp BY dia
ORDER BY 2 desc;

# join
select
  o.order_id,
  o.user_id,
  num_of_item,
  i.order_id,
  i.user_id,
  round(sum(sale_price), 2) as receita
from `bigquery-public-data.thelook_ecommerce.orders` as o
join `bigquery-public-data.thelook_ecommerce.order_items` as i on o.order_id = i.order_id
group by 1,2,3,4,5
order by receita desc;

/* 1) Utilize o dataset público “thelook_ecommerce”, que está presente no projeto “bigquery-public-data” para trazer o identificador único dos usuários, o primeiro nome, email e idade, ordernados pela data de criação do cadastro. */
select
  id,
  first_name,
  email,
  age
from `bigquery-public-data.thelook_ecommerce.users`
order by created_at;

/* 2) No mesmo dataset do exercício anterior, extraia os pedidos que tenham status “Shipped” ou “Processing”. */
select
   order_id,
   status
from `bigquery-public-data.thelook_ecommerce.orders`
where status = "Shipped" or status = "Processing";

select
   order_id,
   status
from `bigquery-public-data.thelook_ecommerce.orders`
where status in ("Shipped", "Processing");

/* 3) Considerando o mesmo exercício anterior, traga os pedidos que foram criados no dia “2022-04-05” e, ao mesmo tempo, tenham status “Cancelled”. */
select
   order_id,
   status,
   created_at,
   date(created_at) as dia
from `bigquery-public-data.thelook_ecommerce.orders`
where status = "Cancelled" and date(created_at) = "2022-04-05";

/* 4) O time de marketing deseja fazer uma campanha em um país específico, com o mesmo dataset dos itens anteriores. 
Para isso, eles te pedem os e-mails de todos os clientes que moram no Brasil. */
select
  email
from `bigquery-public-data.thelook_ecommerce.users`
where email is not null and country = "Brasil";

/* 5) No mesmo dataset anterior, traga o nome dos usuários e o id de seus pedidos. */
select
  order_id,
  first_name
from `bigquery-public-data.thelook_ecommerce.users` u 
join `bigquery-public-data.thelook_ecommerce.orders` o on u.id = o.user_id;

/* 6) Vá ao dataset público “baseball” e na tabela “schedules” traga os identificadores únicos, o nome do time da casa e o nome do time de fora de casa dos jogos em que a duração foi maior ou igual a 250 minutos e menos de 25 mil espectadores. */
select
  gameId,
  homeTeamName,
  awayTeamName,
  duration_minutes,
  attendance
from `bigquery-public-data.baseball.schedules`
where duration_minutes >= 250 and attendance < 25000;

/* 7) No mesmo dataset e tabela, retorne os jogos que começaram entre maio e junho de 2016. */
select
  *
from `bigquery-public-data.baseball.schedules`
where date(startTime) between "2016-05-01" and "2016-06-30";

select
  *
from `bigquery-public-data.baseball.schedules`
where startTime between "2016-05-01 00:00:00" and "2016-06-30 23:59:59";

/* 8) DESAFIO: No mesmo dataset anterior, descubra o nome dos times que tenham somente 6 caracteres, usando o like. Retorne de forma única. */
select distinct
  homeTeamName
from `bigquery-public-data.baseball.schedules`
where homeTeamName like '______';
