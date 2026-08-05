ROOT=$HOME/.dotfiles/blogs-script/

SOME=$($ROOT./getter.sh "$1")

mapfile -t some <<< $SOME
CURR_INDEX=$(($2 + 1))
PREV_INDEX=$(($CURR_INDEX - 1))
NEXT_INDEX=$(($CURR_INDEX + 1))

CURRENT="${some[$CURR_INDEX]}"
PREV="[${some[$PREV_INDEX]}](./$PREV_INDEX.md)"
NEXT="[${some[$NEXT_INDEX]}](./$NEXT_INDEX.md)"

if [ $2 -eq 0 ]; then
  PREV="None"
fi

echo $CURRENT

echo "| Prev | Index | Next |" 
echo "| :--  | :--   | :--  |"
echo "| $PREV | [Index](./README.md) | $NEXT |"
