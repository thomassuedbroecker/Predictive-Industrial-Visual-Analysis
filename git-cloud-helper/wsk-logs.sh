#!/bin/bash
# Information steps:
# 1) chmod u+x push-and-log.sh
# 2) ./push-and-log.sh
# cf api https://api.eu-gb.bluemix.net UK
# cf api https://api.ng.bluemix.net US

application_name="piva-webapp-tsuedbro"

API_ENDPOINT="https://api.ng.bluemix.net"
IBMCLOUD_CLI_DEVOPS_PLATFORM_KEY="FPXOYImr21obkT8V1JDLIe6l262TxDyLUhbNt84HNEoy"
USER_ID="thomas.suedbroecker@de.ibm.com"
RESOURCE_GROUP="default"
ORGANIZATION_NAME="thomas.suedbroecker.2@de.ibm.com"
SPACE_NAME="workshop"

echo "IBM Cloud CLI login"
echo "*****************"
bx login -u $USER_ID  -o $ORGANIZATION_NAME -apikey $IBMCLOUD_CLI_DEVOPS_PLATFORM_KEY -s $SPACE_NAME -g $RESOURCE_GROUP -a $API_ENDPOINT
bx info
echo ""

pwd
cd ..
pwd

echo "get property auth"
ibmcloud fn property get --auth
echo "get property all"
ibmcloud fn property get
echo "get list all"
ibmcloud fn list
echo "get list rules"
ibmcloud fn rule list
echo "get list activations"
ibmcloud fn activation list
echo "get list activations with limit"
ibmcloud fn activation list --limit 1 analysis
echo "get activations with analysis -d"
ibmcloud fn activation get analysis -d
echo "ibmcloud fn activation poll"
ibmcloud fn activation poll
