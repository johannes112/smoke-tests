#!/bin/bash
> failed_scenarios.txt
#bash script for better controlling of execution of tests
#Variables
DRIVER=${1}
BROWSER=${2}
HTACCESS_USERNAME=${3} 
HTACCESS_PASSWORD=${4} 
SHOPWARE_USERNAME=${5} 
SHOPWARE_PASSWORD=${6}
SAUCE_USERNAME=${7}
SAUCE_ACCESS_KEY=${8}
SYSTEM=${9}
SHOP=${10}
COUNTRY=${11}
TAG=${12}

#export (for saucelabs variables)
export DRIVER
export BROWSER
export HTACCESS_USERNAME
export HTACCESS_PASSWORD
export SHOPWARE_USERNAME
export SHOPWARE_PASSWORD
export SYSTEM
export SHOP
export COUNTRY
export SAUCE_USERNAME
export SAUCE_ACCESS_KEY

#variables for cucumber
parameter_config="$DRIVER $BROWSER $SYSTEM $SHOP $COUNTRY"
sauce_config="$SAUCE_USERNAME $SAUCE_ACCESS_KEY"
#tag=" -t ${TAG}"
features_folder_path="features/base_features/"
#extension_features_folder_path="features/extension/special_features/${8}/"
#support_folder_path="features/extension/shops/${8}/"
step_definitions_folder_path="features/step_definitions/"
default_support_folder_path="features/support/"
support_folder_path="features/extension/shops/$SHOP/"
generate_error_file="-f rerun -o rerun.txt"
generate_output="-f html -o output/html_reports.html -f pretty -f json -o output/output.json" 
folder_structure_config="-r $features_folder_path -r $step_definitions_folder_path -r $support_folder_path -r $default_support_folder_path"
#to set value of tag
echo "DRIVER:"$DRIVER
echo "BROWSER:"$BROWSER
echo "SYSTEM:"$SYSTEM
echo "SHOP:"$SHOP
echo "COUNTRY:"$COUNTRY
echo "Number of args:"$#
if [[ $# -lt 11 ]]; then
  echo "Wrong number of arguments!"
else
  if [[ "$BROWSER" == "iPhone" ]]; then
      echo "Mobile"
      TAG="$TAG""_mobile"
    fi
  if [[ -z "${TAG}" ]]; then
    echo "NO TAG!"
    if [[ "$SHOP" == "export" ]]; then
      echo "use Export"
      TAG="@export"
    elif [[ "$SHOP" == "chefworks" ]]; then
      echo "use chefworks"
      TAG="@chefworks"
    else
      echo "Please set a tag:@"
    fi
  else
    echo "TAG:"$TAG
    echo ""
    if [[ "$TAG" == "@checkout" ]]; then
      echo "do not generate output"
      generate_output="" 
    fi
    tag=" -t ${TAG}"
    #config_base="$generate_output $folder_structure_config $tag"
    config_base="$generate_error_file $generate_output $folder_structure_config $tag"
    config_base_rerun="$generate_output $folder_structure_config"
    
  fi
fi

cucumber $config_base
#to run the failed scenarios ust rerun.txt as source
if [[ "$BROWSER" == "iPhone" ]] || [[ $# == 13 ]]; then
    echo "Mobile and RERUN"
    tag=" @rerun.txt"
    config_rerun="$config_base_rerun $tag"
    echo '++++++++++++RERUN OF FAILING FEATURES++++++++++++'
    cucumber $config_rerun
fi


#bash run_cucumber.sh saucelabs <browser> <sauce_username> <sauce_access_key> <system> <shop> <country> @search
#DRIVER=headless BROWSER=firefox cucumber -f pretty -f json -o output/output.json -r features/base_features/ -r features/step_definitions/ -r features/support/ -t @search   