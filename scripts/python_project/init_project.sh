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

case $choice in
1)
  # python_project_name=$(input_project_name)
  cookiecutter https://github.com/sugam21/base_python_template.git
  ;;
2)
  cookiecutter https://github.com/sugam21/torch_cnn_template.git
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
