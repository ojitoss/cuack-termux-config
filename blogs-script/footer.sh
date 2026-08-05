ROOT=$HOME/.dotfiles/blogs-script/

SOME=$($ROOT./getter.sh "$1")

mapfile -t some <<< $SOME
CURR_INDEX=$(($2 + 2))
PREV_INDEX=$(($CURR_INDEX - 1))
NEXT_INDEX=$(($CURR_INDEX + 1))
MAX="${some[0]}"

CURRENT="${some[$CURR_INDEX]}"
PREV="[${some[$PREV_INDEX]}](./$(($PREV_INDEX - 1)).md)"
NEXT="[${some[$NEXT_INDEX]}](./$(($NEXT_INDEX - 1)).md)"

if [ $2 -eq 0 ]; then
  PREV="None"
fi

if [ $2 -ge $MAX ]; then
  NEXT="None"
fi

echo "| Prev | Table of contents | Next |" 
echo "| :--  | :--   | :--  |"
echo "| $PREV | [Here](./README.md#table-of-contents) | $NEXT |"
