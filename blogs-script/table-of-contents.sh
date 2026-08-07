some=$($HOME/.dotfiles/blogs-script/getter.sh $1)

mapfile -t info <<< $some

echo -e "## Table of contents\n"

i=0
for section in "${info[@]}"; do
  if [ $i -ge 2 ]; then
    index_num=$(( $i - 1 ))
    echo "$index_num. [$section]($index_num.md)"
  fi

  i=$(( $i + 1 ))
done
