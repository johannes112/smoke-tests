export SAUCE_USERNAME=${2}
export SAUCE_ACCESS_KEY=${3}
export DRIVER=${1}
echo "DRIVER:"${DRIVER}
cucumber -t ${4}
#sh run_cucumber.sh saucelabs <sauce_username> <sauce_access_key> @search