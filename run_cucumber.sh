#!/bin/bash
#bash script for better controlling of execution of tests
#Variables
SHOPWARE_USERNAME=${1}
SHOPWARE_PASSWORD=${2}
SAUCE_USERNAME=${3}
SAUCE_ACCESS_KEY=${4}
SYSTEM=${5}
SHOP=${6}
COUNTRY=${7}
TAG=${8}
DRIVER=${9}
PLATFORM=${10}
BROWSER=${11}
VERSION=${12}

#export (for saucelabs variables)
export DRIVER
export PLATFORM
export BROWSER
export VERSION
export SHOPWARE_USERNAME
export SHOPWARE_PASSWORD
export SYSTEM
export SHOP
export COUNTRY
export SAUCE_USERNAME
export SAUCE_ACCESS_KEY

#delete output.json
> output.json

#variables for cucumber
parameter_config="$DRIVER $BROWSER $SYSTEM $SHOP $COUNTRY"
sauce_config="$SAUCE_USERNAME $SAUCE_ACCESS_KEY"
#tag=" -t ${TAG}"
features_folder_path="features/base_features/"
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
if [[ $# -lt 9 ]]; then
  echo "Wrong number of arguments!"
else
  if [[ "$BROWSER" == "iPhone" ]] && [[ "$TAG" != *"_mobile" ]]; then
      echo "Mobile"
      TAG="$TAG""_mobile"
  fi
  if [[ "$TAG" == *"mobile" ]]; then
      BROWSER="iPhone"
      echo $BROWSER
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
    #config_base= to run tests on pc once
    config_base="$generate_output $folder_structure_config $tag"
    #config_base_generate_rerun_with_tag= to generate a file for error-reporting
    config_base_generate_rerun_with_tag="$generate_error_file $generate_output $folder_structure_config $tag"
    #config_base_rerun_errors: to run failed tests of generated errorfile
    config_base_rerun_errors="$generate_output $folder_structure_config "@rerun.txt""
  fi
fi

#only run failed scenarios on mobile again or if there is an additional arg
if [[ "$BROWSER" == "iPhone" ]]; then # || [[ $# == 13 ]]; then
    echo ""
    echo "Mobile"
fi
    cucumber $config_base



#bash run_cucumber.sh saucelabs <browser> <sauce_username> <sauce_access_key> <system> <shop> <country> @search
#DRIVER=headless BROWSER=firefox cucumber -f pretty -f json -o output/output.json -r features/base_features/ -r features/step_definitions/ -r features/support/ -t @search
