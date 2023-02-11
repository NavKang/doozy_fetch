#!/bin/bash
echo
echo "++++++++++++++++++++++++++++++++++++++++++++"
echo -e "            \033[1;31mDoozys Fetch Script\033[0m"
echo "++++++++++++++++++++++++++++++++++++++++++++"
echo



if [ $# -eq 0 ]; then
  echo "Usage: $0 11223"
  exit 1
fi

exploit_id=$1

result=$(searchsploit -p $exploit_id)


path=$(echo "$result" | grep "Path" )


path_2=$(echo $path | cut -d ' ' -f 2)
echo
echo -e "\033[0;32mThe full path to the exploit is: $path_2\033[0m"
echo
read -p "Enter the target directory: " target_dir

cp "$path_2" "$target_dir"
echo

echo -e "\033[1;31mThe script has successfully been copied to the directory\033[0m"
