WORD=ENIGMA

echo -e "Ok, I picked a word, try to guess it\n"
GO_ON=1
TRIES=0
while [ $GO_ON -eq 1 ]
do
  TRIES=$(expr $TRIES + 1)
  read -n 5 -p "What is your guess: " USER_GUESS
  USER_GUESS=$(echo "$USER_GUESS" | awk '{print toupper($0)}')
  STATE=""
  for i in {0..4}
  do
    if [ "${WORD:i:1}" == "${USER_GUESS:i:1}" ]
    then
      STATE=$STATE"🟩"
    elif [[ $WORD =~ "${USER_GUESS:i:1}" ]]
    then
      STATE=$STATE"🟨"
    else
      STATE=$STATE"⬛️"
    fi
  done
  echo "  "$STATE
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
