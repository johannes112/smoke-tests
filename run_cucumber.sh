#!/bin/bash
echo "IP of this machine:"
curl ipecho.net/plain ; echo
#bash script for better controlling of execution of tests
#Variables
DRIVER=${1}
BROWSER=${2}
SHOPWARE_USERNAME=${3} 
SHOPWARE_PASSWORD=${4}
SAUCE_USERNAME=${5}
SAUCE_ACCESS_KEY=${6}
SYSTEM=${7}
SHOP=${8}
COUNTRY=${9}

#HTACCESS_USER=${7} 
#HTACCESS_KEY=${8}
TAG=${10}

#export (for saucelabs variables)
export DRIVER
export BROWSER
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
generate_output="-f pretty -f json -o output/output.json" 
folder_structure_config="-r $features_folder_path -r $step_definitions_folder_path -r $support_folder_path -r $default_support_folder_path"
#to set value of tag
echo "DRIVER:"$DRIVER
echo "BROWSER:"$BROWSER
echo "SYSTEM:"$SYSTEM
echo "SHOP:"$SHOP
echo "COUNTRY:"$COUNTRY
if [[ -z "${TAG}" ]]; then
  echo "NO TAG!"
  if [[ "$SHOP" == "export" ]]; then
    echo "use Export"
    TAG="@export"
  elif [[ "$SHOP" == "chefworks" ]]; then
    echo "use chefworks"
    TAG="@chefworks"
  else
    echo "No tag for this shop exists"
  fi
else
  echo "TAG:"$TAG
  echo ""
fi


tag=" -t ${TAG}"

config_base="$generate_output $folder_structure_config $tag"
cucumber $config_base 

#bash run_cucumber.sh saucelabs <browser> <sauce_username> <sauce_access_key> <system> <shop> <country> @search
#DRIVER=headless BROWSER=firefox cucumber -f pretty -f json -o output/output.json -r features/base_features/ -r features/step_definitions/ -r features/support/ -t @search   