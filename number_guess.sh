#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"


RANDOM_NUMBER=$((1 + RANDOM % 1000 ))
TRIES=1

echo Enter your username:
read USERNAME

REGISTERED_PLAYER=$($PSQL "SELECT username FROM games WHERE username = '$USERNAME'")
GAMES_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM games WHERE username  ='$USERNAME' ")
BEST_GAME=$($PSQL "SELECT MIN(tries) FROM games WHERE username  ='$USERNAME'")

NUMBER_CHECKER(){
  if [[ $USER_PICK -lt $RANDOM_NUMBER ]]
  then
  ((TRIES++))
  echo "It's higher than that, guess again:" 
  NUMBER_GUESS
  elif [[ $USER_PICK -gt $RANDOM_NUMBER ]]
  then
  ((TRIES++))
  echo "It's lower than that, guess again:"
  NUMBER_GUESS
  elif [[ $USER_PICK == $RANDOM_NUMBER ]]
  then
  INSERT_DATA=$($PSQL "INSERT INTO games(username, tries) VALUES ('$USERNAME', $TRIES)")
  echo "You guessed it in $TRIES tries. The secret number was $RANDOM_NUMBER. Nice job!"
  fi
}

NUMBER_GUESS(){
read USER_PICK

if [[ ! $USER_PICK =~ ^[0-9]+$ ]]
then
echo That is not an integer, guess again:
NUMBER_GUESS
else
NUMBER_CHECKER
fi
}


if [[ -z $REGISTERED_PLAYER ]]
then 
echo "Welcome, $USERNAME! It looks like this is your first time here."
else
echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

echo Guess the secret number between 1 and 1000:
NUMBER_GUESS
