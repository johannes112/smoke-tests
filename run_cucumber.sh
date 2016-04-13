#!/bin/bash
#bash script for better controlling of execution of tests
#Variables
DRIVER=${1}
SAUCE_USERNAME=${2}
SAUCE_ACCESS_KEY=${3}
SYSTEM=${4}
SHOP=${5}
COUNTRY=${6}

#HTACCESS_USER=${7} 
#HTACCESS_KEY=${8}
#MAGENTO_USERNAME=${9} 
#MAGENTO_PASSWORD=${10}
TAG=${7}

#export (for saucelabs variables)
export DRIVER
export SYSTEM
export SHOP
export COUNTRY
export SAUCE_USERNAME
export SAUCE_ACCESS_KEY

#variables for cucumber
parameter_config="$DRIVER $SYSTEM $SHOP $COUNTRY"
sauce_config="$SAUCE_USERNAME $SAUCE_ACCESS_KEY"
tag=" -t ${TAG}"
features_folder_path="features/base_features/"
#extension_features_folder_path="features/extension/special_features/${8}/"
#support_folder_path="features/extension/shops/${8}/"
step_definitions_folder_path="features/step_definitions/"
default_support_folder_path="features/support/"
support_folder_path="features/extension/shops/$SHOP/"
generate_output="-f pretty -f json -o output/output.json" 
folder_structure_config="-r $features_folder_path -r $step_definitions_folder_path -r $support_folder_path -r $default_support_folder_path"

if [[ -z "${TAG}" ]]; then
  config_base="$generate_output $folder_structure_config" #$htaccess_access $magento_config 
else
  config_base="$generate_output $folder_structure_config $tag" #$htaccess_access $magento_config 
fi

echo "DRIVER:"$DRIVER
echo "SYSTEM:"$SYSTEM
echo "SHOP:"$SHOP
echo "COUNTRY:"$COUNTRY
if [[ -z "${TAG}" ]]; then
  echo "NO TAG!\n"
else
  echo "TAG:"$TAG
  echo ""
fi

cucumber $config_base 

#bash run_cucumber.sh saucelabs <sauce_username> <sauce_access_key> <system> <shop> <country> @search
#DRIVER=headless cucumber -f pretty -f json -o output/output.json -r features/base_features/ -r features/step_definitions/ -r features/support/ -t @search   