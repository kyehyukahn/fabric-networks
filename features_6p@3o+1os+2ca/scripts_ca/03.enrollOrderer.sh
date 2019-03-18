#ADMIN_ORDERER_PATH="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/example.com/users/Admin@orderer.example.com"
ADMIN_ORDERER_PATH="/var/hyperledger/orderer/users/Admin@example.com"
fabric-ca-client enroll -u http://Admin@ordererorg0:orderer0password@ca.example.com:7054 -H $ADMIN_ORDERER_PATH
mkdir -p $ADMIN_ORDERER_PATH/msp/admincerts
cp $ADMIN_ORDERER_PATH/msp/signcerts/cert.pem $ADMIN_ORDERER_PATH/msp/admincerts/Admin@example.com-cert.pem