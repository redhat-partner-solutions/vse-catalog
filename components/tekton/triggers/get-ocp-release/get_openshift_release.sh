#!/bin/bash

OCP_REPOSITORY=quay.io/openshift-release-dev/ocp-release
OCP_RELEASE="4.13"
DAYS_MODIFIED=5
LAST_RELEASE=$(skopeo list-tags docker://${OCP_REPOSITORY} | jq '.Tags[] | select(contains("'${OCP_RELEASE}'"))' | tail -n1 | sed 's/"//g')

echo "Last Openshift release - $LAST_RELEASE"

OCP_TAG_CREATED=$(skopeo inspect docker://${OCP_REPOSITORY}:${LAST_RELEASE} | jq '.Created')

echo $OCP_TAG_CREATED

OCP_TAG_CREATED=$(echo ${OCP_TAG_CREATED} | cut -c 2-11)
DATE_TIME=$(date +%F)

DATE_DELTA="$(($(date -d "$DATE_TIME" '+%s') - $(date -d "$OCP_TAG_CREATED" '+%s')))"
DATE_DELTA=$(("$DATE_DELTA"/86400))
echo "Last modfied - $DATE_DELTA days ago"

if [ $DATE_DELTA -le $DAYS_MODIFIED ]; then
    echo "Need to send notification"
    curl -v -H 'content-Type: application/json' -d '{"webhook_url": "https://chat.googleapis.com/v1/spaces/AAAAiCQuo38/messages?key=AIzaSyDdI0hCZtE6vySjMm-WEfRq3CPzqKqqsHI&token=K5qFDcnHxE3-hRqbL4AZXamfpqHNFzv5t6TiMMe4rZc%3D", "webhook_message": "'"New $OCP_RELEASE Openshift release from the last $DATE_DELTA days - $LAST_RELEASE"'"}' http://trigger-gchat-vse-cicd-catalog.apps.db5.cars.lab
fi
