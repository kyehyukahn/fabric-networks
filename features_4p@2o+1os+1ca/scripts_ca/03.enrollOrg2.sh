#ADMIN_ORG2_PATH="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org2.example.com/users/Admin@org2.example.com"
ADMIN_ORG2_PATH="/etc/hyperledger/fabric/users/Admin@org2.example.com"
fabric-ca-client enroll -u http://Admin@org2.example.com:org2password@ca.example.com:7054 -H $ADMIN_ORG2_PATH
mkdir -p $ADMIN_ORG2_PATH/msp/admincerts
cp $ADMIN_ORG2_PATH/msp/signcerts/cert.pem $ADMIN_ORG2_PATH/msp/admincerts/Admin@org2.example.com-cert.pem