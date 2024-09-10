#!/bin/bash
echo "
******** Welcome *********
     __
 .--()°'.'
'|, . ,'
 !_-(_\ 

Please choose one of the following:
 [1] Basic   Python Project.
 [2] Pytorch (CNN) Project.
 [3] Pytorch (LLM) Project.
 [4] Pytorch (Django) Project.
   "
read -p "Enter your choice [1-4]: " choice
echo "***************************"

# check_project_name() {
#   if [[ "$1" == *"-"* ]]; then
#     echo "Project name contains a hyphen. Exiting..."
#     exit 1
#   elif [[ "$1" == *" "* ]]; then
#     echo "Project name contains a space. Exiting..."
#     exit 1
#   elif [[ "$1" =~ [0-9] ]]; then
#     echo "Project name contains numbers. Exiting..."
#     exit 1
#   fi
# }

# input_project_name() {
#   read -p "Enter Project Name [no 'space' or '-' or numbers] >> " project_name
#   check_project_name "$project_name"
#   echo $project_name
# }

case $choice in
1)
  # python_project_name=$(input_project_name)
  cookiecutter https://github.com/sugam21/base_python_template.git
  ;;
2)
  python_project_name=$(input_project_name)
  echo $python_project_name
  ;;
3)
  python_project_name=$(input_project_name)
  echo $python_project_name
  ;;
4)
  python_project_name=$(input_project_name)
  echo $python_project_name
  ;;
*)
  echo "Invalid Choice."
  exit 1
  ;;
esac
