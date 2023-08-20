SELECT
  trip_id,
  # infos da estação de partida
  start_station_latitude,
  start_station_longitude,
  start_station_geom,
  ST_GEOGPOINT(start_station_longitude, start_station_latitude) as ponto_geografico_start,
  # infos da estação de chegada
  end_station_latitude,
  end_station_longitude,
  end_station_geom,
  ST_GEOGPOINT(end_station_longitude, end_station_latitude) as ponto_geografico_end,
  # distância e velocidade média
  round(ST_DISTANCE(ST_GEOGPOINT(end_station_longitude, end_station_latitude), ST_GEOGPOINT(start_station_longitude, start_station_latitude)), 1) as distancia_m,
  round(ST_DISTANCE(ST_GEOGPOINT(end_station_longitude, end_station_latitude), ST_GEOGPOINT(start_station_longitude, start_station_latitude))/duration_sec, 1) as velocidade_media,
  # st_x e st_y
  ST_X(start_station_geom) as longitude,
  ST_Y(start_station_geom) as latitude,
  ST_MAKELINE(ST_GEOGPOINT(start_station_longitude, start_station_latitude), ST_GEOGPOINT(end_station_longitude, end_station_latitude)) as rota
from `bigquery-public-data.san_francisco_bikeshare.bikeshare_trips`
where start_station_latitude is not null
  and end_station_latitude is not null
  and start_station_latitude is not null
  and end_station_latitude is not null
  and duration_sec is not null
order by rand()
limit 100;

SELECT
  trip_id,
  ST_MAKELINE(ST_GEOGPOINT(start_station_longitude, start_station_latitude), ST_GEOGPOINT(end_station_longitude, end_station_latitude)) as rota
from `bigquery-public-data.san_francisco_bikeshare.bikeshare_trips`
where start_station_latitude is not null
  and end_station_latitude is not null
  and start_station_latitude is not null
  and end_station_latitude is not null
  and duration_sec is not null
order by rand()
limit 10;

/*
1)  Ache o dataset “austin_crime” no conjunto de dados públicos do BigQuery. Pegue 10 incidentes aleatórios com latitude e longitude não nulas. Crie os pontos geográficos. Vá até o Google Maps e selecione uma coordenada qualquer na cidade de Austin, EUA (pesquise como fazer) e calcule a distância (em km) entre cada ponto desses incidentes à coordenada escolhida.  Crie também as rotas de cada incidente à coordenada.
*/
select
  unique_key,
  # infos dos incidentes
  latitude,
  longitude,
  ST_GEOGPOINT(longitude, latitude) AS ponto_geografico_incidente,
  # infos do mcdonalds 30.2723734,-97.6981411
  ST_GEOGPOINT(-97.6981411, 30.2723734) AS ponto_geografico_mcdonalds,
  # distancia
  round(ST_DISTANCE(ST_GEOGPOINT(longitude, latitude), ST_GEOGPOINT(-97.6981411, 30.2723734))/1000, 2) as distancia,
  # criando linhas de rota
  ST_MAKELINE(ST_GEOGPOINT(longitude, latitude), ST_GEOGPOINT(-97.6981411, 30.2723734)) AS rota
from bigquery-public-data.austin_crime.crime
where latitude is not null 
  and longitude is not null
order by rand()
limit 10;

/*
2)  Calcule a mínima e a máxima distância do resultado da query acima.
*/
WITH dist as (
  select
    unique_key,
    # infos dos incidentes
    latitude,
    longitude,
    ST_GEOGPOINT(longitude, latitude) AS ponto_geografico_incidente,
    # infos do mcdonalds 30.2723734,-97.6981411
    ST_GEOGPOINT(-97.6981411, 30.2723734) AS ponto_geografico_mcdonalds,
    # distancia
    round(ST_DISTANCE(ST_GEOGPOINT(longitude, latitude), ST_GEOGPOINT(-97.6981411, 30.2723734))/1000, 2) as distancia,
    # criando linhas de rota
    ST_MAKELINE(ST_GEOGPOINT(longitude, latitude), ST_GEOGPOINT(-97.6981411, 30.2723734)) AS rota
  from bigquery-public-data.austin_crime.crime
  where latitude is not null 
    and longitude is not null
  order by rand()
  limit 10)

select
  min(distancia) as minimo,
  max(distancia) as maximo
from dist;
