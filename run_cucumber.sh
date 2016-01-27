#!/bin/bash
#bash script for better controlling of execution of tests
#Variables
DRIVER=${1}
SAUCE_USERNAME=${2}
SAUCE_ACCESS_KEY=${3}
#export (for saucelabs variables)
export DRIVER
export SAUCE_USERNAME
export SAUCE_ACCESS_KEY

echo "DRIVER:"${DRIVER}
cucumber -t ${4}
#sh run_cucumber.sh saucelabs <sauce_username> <sauce_access_key> @search