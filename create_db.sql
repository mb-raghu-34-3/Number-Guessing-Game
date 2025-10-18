-- run using
-- psql --username=freecodecamp --dbname=postgres -f ../create_db.sql 

create database number_guess;

\c number_guess;

create table users(
  user_id serial primary key,
  username varchar not null unique,
  game_played int default 0,
  best_game int not null default 0
);