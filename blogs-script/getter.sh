declare -a blogs_names
declare -A blogs_sections

blogs_names=(
  "things-i-regretted-about-autag",
  "autag-the-good-parts"
)

blogs_sections[0,0]="Why is this variable?"
blogs_sections[0,1]="Insane error management"
blogs_sections[0,2]="Over-engineering"
blogs_sections[0,3]="if/else management"
blogs_sections[0,4]="DRY master"
blogs_sections[0,5]="This breaks the project"
blogs_sections[0,6]="Version controlling"
blogs_sections[0,7]="Perfect english"
blogs_sections[0,8]="Obssesed for some reason"
blogs_sections[0,9]="Logo"

blogs_sections[1,0]="/"

declare -a sorted_list
declare -i max=-1

for section in "${!blogs_sections[@]}"; do
  IFS="," 
  read -r row col <<< $section

  if [ $row -eq $1 ]; then
    sorted_list[$col]="${blogs_sections[$section]}"
    max+=1
  fi
done

echo $max

echo "${blogs_names[$1]}"

for section in "${sorted_list[@]}"; do
  echo $section
done
