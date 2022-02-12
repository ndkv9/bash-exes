WORD=MONGO
GO_ON=1
TRIES=0

while [ $GO_ON -eq 1 ]
do
  TRIES=(expr $TRIES + 1)
  read -n 5 -p "What is your guess: " USER_GUESS
  if [ $USER_GUESS == $WORD ]
  then
    echo -e "You won!"
    GO_ON=0
  elif [ $TRIES == 5 ]
  then
    echo -e "You failed.\nThe word was "$WORD
    GO_ON=0
  fi
done
