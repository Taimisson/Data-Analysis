# FIRST_VALUE
SELECT
  o.user_id,
  order_id,
  o.created_at,
  first_value(created_at) over(partition by user_id order by created_at) as data_primeiro_pedido
FROM bigquery-public-data.thelook_ecommerce.orders o
order by user_id, created_at;

# LAST_VALUE
SELECT
  o.user_id,
  order_id,
  o.created_at,
  last_value(created_at) over(partition by user_id order by created_at ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) as data_ultimo_pedido
FROM bigquery-public-data.thelook_ecommerce.orders o
order by user_id, created_at;

# LAG
SELECT
  o.user_id,
  order_id,
  o.created_at,
  lag(created_at) over(partition by user_id order by created_at) as data_ultimo_pedido,
  timestamp_diff(created_at, lag(created_at) over(partition by user_id order by created_at), day) as diff_dias
FROM bigquery-public-data.thelook_ecommerce.orders o
order by user_id, created_at;

# LEAD
SELECT
  o.user_id,
  order_id,
  o.created_at,
  LEAD(created_at) over(partition by user_id order by created_at) as data_PROXIMO_PEDIDO
FROM bigquery-public-data.thelook_ecommerce.orders o
order by user_id, created_at;

# rank, row_number
select
  distribution_center_id,
  rank() over(order by distribution_center_id) as rank,
  row_number() over(order by distribution_center_id) as numero_linha
from bigquery-public-data.thelook_ecommerce.products
order by 1, 3;

# funções de agregação
select
  o.user_id,
  order_id,
  o.created_at,
  min(created_at) over(partition by user_id) as data_primeira_compra,
  max(created_at) over(partition by user_id) as data_ultima_compra,
  count(order_id) over(partition by user_id) as numero_compras
from bigquery-public-data.thelook_ecommerce.orders o
order by user_id, created_at;

/* 
1) Ache o dataset “thelook_ecommerce” nos dados públicos do BigQuery. Para cada pedido do usuário, calcule a diferença, em dias, entre a data da compra atual e a data da primeira compra do usuário.
*/
select
  user_id,
  order_id,
  created_at,
  timestamp_diff(created_at, min(created_at) over(partition by user_id), day) diferenca_dias
from bigquery-public-data.thelook_ecommerce.orders
order by 1, 3;

/*
2) Calcule também a receita acumulada dos usuários, a cada pedido.
*/
select
  o.user_id,
  o.order_id,
  oi.id as item_id,
  o.created_at,
  sum(sale_price) over(partition by o.user_id order by o.created_at, oi.id rows between unbounded preceding and current row) as receita_acumulada
from bigquery-public-data.thelook_ecommerce.orders o
join bigquery-public-data.thelook_ecommerce.order_items oi on oi.order_id = o.order_id
order by 1, 4, 3;

/*
3) Retorne o tempo em dias entre uma compra e outra para cada usuário. Traga, depois, o usuário com maior tempo.
*/
select
  * 
from(
  select
    user_id,
    order_id,
    created_at,
    timestamp_diff(created_at, lag(created_at) over(partition by user_id order by created_at), day) diferenca_dias
  from bigquery-public-data.thelook_ecommerce.orders
  order by 1, 3) as T2
JOIN (
  select
    max(diferenca_dias) as maxima_diferenca_dias
  from (
    select
      user_id,
      order_id,
      created_at,
      timestamp_diff(created_at, lag(created_at) over(partition by user_id order by created_at), day) diferenca_dias
    from bigquery-public-data.thelook_ecommerce.orders
    order by 1, 3) as T) AS T3 on T3.maxima_diferenca_dias = T2.diferenca_dias;

/*
4) Descubra uma forma de retornar os usuários com compras recorrentes (mais de 1 compra) com window functions.
*/
select distinct
  user_id
from (
  select
    user_id,
    order_id,
    created_at,
    row_number() over(partition by user_id order by created_at) as numero_compra
  from bigquery-public-data.thelook_ecommerce.orders
  order by 1, 3) as T
where numero_compra > 1;
