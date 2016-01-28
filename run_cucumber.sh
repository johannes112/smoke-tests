#!/bin/bash
#bash script for better controlling of execution of tests
#Variables
DRIVER=${1}
SYSTEM=${2}
SHOP=${3}
COUNTRY=${4}
SAUCE_USERNAME=${5}
SAUCE_ACCESS_KEY=${6}
#HTACCESS_USER=${7} 
#HTACCESS_KEY=${8}
#MAGENTO_USERNAME=${9} 
#MAGENTO_PASSWORD=${10}
TAG=${7}

#export (for saucelabs variables)
export DRIVER
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
generate_output="-f pretty -f json -o output/output.json" 
folder_structure_config="-r $features_folder_path -r $step_definitions_folder_path -r $default_support_folder_path"
config_base="$generate_output $folder_structure_config $tag" #$htaccess_access $magento_config 

echo "parameter_config:"$parameter_config
echo "sauce_config:"$sauce_config
echo "tag:"$tag
echo $config_base
cucumber $config_base 
#cucumber -t ${TAG}
#sh run_cucumber.sh saucelabs <sauce_username> <sauce_access_key> @search
#DRIVER=headless cucumber -f pretty -f json -o output/output.json -r features/base_features/ -r features/step_definitions/ -r features/support/ -t @search   