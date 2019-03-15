#ADMIN_ORG1_PATH="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.example.com/users/Admin@org1.example.com"
ADMIN_ORG1_PATH="/etc/hyperledger/fabric/users/Admin@org1.example.com"
fabric-ca-client enroll -u http://Admin@org1.example.com:org1password@ca.example.com:7054 -H $ADMIN_ORG1_PATH
mkdir -p $ADMIN_ORG1_PATH/msp/admincerts
cp $ADMIN_ORG1_PATH/msp/signcerts/cert.pem $ADMIN_ORG1_PATH/msp/admincerts/Admin@org1.example.com-cert.pem