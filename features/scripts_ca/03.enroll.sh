#ADMIN_ORG1_PATH="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1/users/Admin@org1"
#fabric-ca-client enroll -u http://Admin@org1:org1password@ca.example.com:7054 -H $ADMIN_ORG1_PATH
#mv $ADMIN_ORG1_PATH/msp/cacerts/ca-example-comm-7054.pem ADMIN_ORG1_PATH/msp/cacerts/ca.crt 
#mkdir -p $ADMIN_ORG1_PATH/msp/admincerts
#cp $ADMIN_ORG1_PATH/msp/signcerts/cert.pem $ADMIN_ORG1_PATH/msp/admincerts/Admin@org1-cert.pem

ADMIN_ORG2_PATH="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org2/users/Admin@org2"
fabric-ca-client enroll -u http://Admin@org2:org2password@ca.example.com:7054 -H $ADMIN_ORG2_PATH
mkdir -p $ADMIN_ORG2_PATH/msp/admincerts
cp $ADMIN_ORG2_PATH/msp/signcerts/cert.pem $ADMIN_ORG2_PATH/msp/admincerts/Admin@org2-cert.pem

#ADMIN_ORDERER_PATH="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/ordererorg0/users/Admin@ordererorg0"
#fabric-ca-client enroll -u http://Admin@ordererorg0:orderer0password@ca.example.com:7054 -H $ADMIN_ORDERER_PATH
#mkdir -p $ADMIN_ORDERER_PATH/msp/admincerts
#cp $ADMIN_ORDERER_PATH/msp/signcerts/cert.pem $ADMIN_ORDERER_PATH/msp/admincerts/Admin@ordererorg0-cert.pem