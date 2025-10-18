#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

RANDOM_NUMBER=$((($RANDOM % 1000) + 1))

echo "Enter your username:"
read USERNAME

# check if user exists
USERNAME_RESULT=$($PSQL "select user_id, username, game_played, best_game from users where username='$USERNAME'")

if [[ -z $USERNAME_RESULT ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  INSERT_USER=$($PSQL "insert into users(username, game_played, best_game) values('$USERNAME', 0, 0)")
  USERNAME_RESULT=$($PSQL "select user_id, username, game_played, best_game from users where username='$USERNAME'")
fi

IFS="|" read USER_ID USER GAME_PLAYED BEST_GAME <<< "$USERNAME_RESULT"

if [[ $GAME_PLAYED -gt 0 ]]
then
  echo "Welcome back, $USER! You have played $GAME_PLAYED games, and your best game took $BEST_GAME guesses."
else
  echo "Welcome, $USER! It looks like this is your first time here."
fi

# increase game count
((GAME_PLAYED++))
UPDATE_GAME_COUNT=$($PSQL "update users set game_played=$GAME_PLAYED where user_id=$USER_ID")

echo "Guess the secret number between 1 and 1000:"
GUESS=0

read SECRET_NUM
while true
do
  ((GUESS++))

  # check if not a number
  if [[ ! $SECRET_NUM =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    read SECRET_NUM

  # if too high
  elif [[ $SECRET_NUM -gt $RANDOM_NUMBER ]]
  then
    echo "It's lower than that, guess again:"
    read SECRET_NUM

  # if too low
  elif [[ $SECRET_NUM -lt $RANDOM_NUMBER ]]
  then
    echo "It's higher than that, guess again:"
    read SECRET_NUM

  # correct guess
  elif [[ $SECRET_NUM -eq $RANDOM_NUMBER ]]
  then
    echo "You guessed it in $GUESS tries. The secret number was $RANDOM_NUMBER. Nice job!"
    break
  fi
done

# update best score if needed
if [[ $BEST_GAME -eq 0 || $GUESS -lt $BEST_GAME ]]
then
  UPDATE_BEST=$($PSQL "update users set best_game=$GUESS where user_id=$USER_ID")
fi
