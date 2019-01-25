#!/usr/bin/env bash

# Define those global variables
if [ -f ./variables.sh ]; then
 source ./variables.sh
elif [ -f ./scripts/variables.sh ]; then
 source ./scripts/variables.sh
else
	echo "Cannot find the variables.sh files, pls check"
	exit 1
fi

if [ ! -d e2e_cli/${CHANNEL_ARTIFACTS} ]; then
    mkdir e2e_cli/${CHANNEL_ARTIFACTS}
fi



echo "Generate genesis block for system channel using configtx.yaml"

configtxgen \
    -configPath e2e_cli \
    -channelID ${SYS_CHANNEL} \
    -profile ${ORDERER_GENSIS_PROFILE} \
    -outputBlock e2e_cli/${CHANNEL_ARTIFACTS}/${ORDERER_GENSIS}


echo "Generate the new app channel tx using configtx.yaml"

configtxgen \
    -configPath e2e_cli \
    -profile ${APP_CHANNEL_PROFILE} \
    -channelID ${APP_CHANNEL} \
    -outputCreateChannelTx e2e_cli/${CHANNEL_ARTIFACTS}/channel.tx

configtxgen \
    -configPath e2e_cli \
    -inspectChannelCreateTx e2e_cli/${CHANNEL_ARTIFACTS}/channel.tx > e2e_cli/${CHANNEL_ARTIFACTS}/channel.json


echo "Create the anchor peer configuration tx for org1, org2 and org3"

configtxgen \
    -configPath e2e_cli \
    -profile ${APP_CHANNEL_PROFILE} \
    -channelID ${APP_CHANNEL} \
    -asOrg ${ORG1MSP} \
    -outputAnchorPeersUpdate e2e_cli/${CHANNEL_ARTIFACTS}/${UPDATE_ANCHOR_ORG1_TX}

configtxgen \
    -configPath e2e_cli \
    -profile ${APP_CHANNEL_PROFILE} \
    -channelID ${APP_CHANNEL} \
    -asOrg ${ORG2MSP} \
    -outputAnchorPeersUpdate e2e_cli/${CHANNEL_ARTIFACTS}/${UPDATE_ANCHOR_ORG2_TX}

configtxgen \
    -configPath e2e_cli \
    -profile ${APP_CHANNEL_PROFILE} \
    -channelID ${APP_CHANNEL} \
    -asOrg ${ORG3MSP} \
    -outputAnchorPeersUpdate e2e_cli/${CHANNEL_ARTIFACTS}/${UPDATE_ANCHOR_ORG3_TX}

echo "Output the json for org1, org2 and org3"

configtxgen \
    -configPath e2e_cli \
    -printOrg ${ORG1MSP} >e2e_cli/${CHANNEL_ARTIFACTS}/${ORG1MSP}.json

configtxgen \
    -configPath e2e_cli \
    -printOrg ${ORG2MSP} >e2e_cli/${CHANNEL_ARTIFACTS}/${ORG2MSP}.json

configtxgen \
    -configPath e2e_cli \
    -printOrg ${ORG3MSP} >e2e_cli/${CHANNEL_ARTIFACTS}/${ORG3MSP}.json
