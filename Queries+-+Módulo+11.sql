# inner join
select distinct
  a.user_id as user_id_a,
  c.user_id as user_id_c,
  a.name
from cursos-386113.relacionamentos.acessos a    
inner join cursos-386113.relacionamentos.compras c on a.user_id = c.user_id;

select distinct
  a.user_id as user_id_a,
  c.user_id as user_id_c,
  a.name
from cursos-386113.relacionamentos.acessos a    
join cursos-386113.relacionamentos.compras c on a.user_id = c.user_id;

# left join
select distinct
  a.user_id as user_id_a,
  c.user_id as user_id_c,
  a.name,
  c.revenue
from cursos-386113.relacionamentos.acessos a 
left join cursos-386113.relacionamentos.compras c on a.user_id = c.user_id;

select distinct
  a.user_id as user_id_a,
  c.user_id as user_id_c,
  a.name,
  c.revenue
from cursos-386113.relacionamentos.acessos a 
left join cursos-386113.relacionamentos.compras c on a.user_id = c.user_id
where c.user_id is null;

# right join
select distinct
  a.user_id as user_id_a,
  c.user_id as user_id_c,
  c.name,
  c.revenue
from cursos-386113.relacionamentos.acessos a 
right join cursos-386113.relacionamentos.compras c on a.user_id = c.user_id;

select distinct
  a.user_id as user_id_a,
  c.user_id as user_id_c,
  c.name,
  c.revenue
from cursos-386113.relacionamentos.acessos a 
right join cursos-386113.relacionamentos.compras c on a.user_id = c.user_id
where a.user_id is null;

# full join 
select distinct
  a.user_id as user_id_tabela_a,
  a.name as name_tabela_a,
  c.user_id as user_id_tabela_c,
  c.name as name_tabela_c
from relacionamentos.acessos a
full join relacionamentos.compras c on a.user_id = c.user_id;

# full join (sem a intersecção)
select distinct
  a.user_id as user_id_tabela_a,
  a.name as name_tabela_a,
  c.user_id as user_id_tabela_c,
  c.name as name_tabela_c
from relacionamentos.acessos a
full join relacionamentos.compras c on a.user_id = c.user_id
where a.user_id is null OR c.user_id is null;

# full join duplo
select distinct
  a.user_id as user_id_tabela_a,
  a.name as name_tabela_a,
  c.user_id as user_id_tabela_c,
  c.name as name_tabela_c,
  u.id as user_id_tabela_u,
  u.name as name_tabela_u
from relacionamentos.acessos a 
full join relacionamentos.compras c on a.user_id = c.user_id 
full join relacionamentos.usuarios u on coalesce(a.user_id, c.user_id) = u.id;

# full join duplo (sem a intersecção)
select distinct
  a.user_id as user_id_tabela_a,
  a.name as name_tabela_a,
  c.user_id as user_id_tabela_c,
  c.name as name_tabela_c,
  u.id as user_id_tabela_u,
  u.name as name_tabela_u
from relacionamentos.acessos a 
full join relacionamentos.compras c on a.user_id = c.user_id 
full join relacionamentos.usuarios u on coalesce(a.user_id, c.user_id) = u.id
where coalesce(a.user_id, c.user_id) is null;

/*
1) Ache o dataset “thelook_ecommerce” nos dados públicos do BigQuery. Traga os usuários que não tem compra em dezembro de 2022.
*/
select distinct
  u.id
from bigquery-public-data.thelook_ecommerce.users u
left join bigquery-public-data.thelook_ecommerce.orders o on u.id = o.user_id and date(o.created_at) between "2022-12-01" and "2022-12-31"
where o.user_id is null;

/*
2) No mesmo dataset, traga informações resumidas sobre os usuários (de todos, tendo ou não compras). Id do usuário, quantidade de compras realizadas, quantidade de itens comprados, ticket médio, quantidade de produtos distintos comprados, centro de distribuições dos quais o usuário recebeu produtos, quantidade de criações de carrinho.
*/
select distinct
  u.id,
  count(distinct o.order_id) as compras_realizadas,
  count(distinct oi.id) as itens_comprados,
  case 
    when count(distinct o.order_id) > 0 then sum(sale_price)/count(distinct o.order_id)
    else 0 
  end as ticket_medio,
  count(distinct p.id) as produtos_distintos,
  count(distinct d.id) as centros_distribuicao,
  count(distinct e.id) as eventos_carrinho
from bigquery-public-data.thelook_ecommerce.users u
left join bigquery-public-data.thelook_ecommerce.orders o on u.id = o.user_id
left join bigquery-public-data.thelook_ecommerce.order_items oi on o.order_id = oi.order_id
left join bigquery-public-data.thelook_ecommerce.products p on p.id = oi.product_id
left join bigquery-public-data.thelook_ecommerce.distribution_centers d on d.id = p.distribution_center_id
left join bigquery-public-data.thelook_ecommerce.events e on e.user_id = u.id and event_type = 'cart'
group by 1
order by id;
