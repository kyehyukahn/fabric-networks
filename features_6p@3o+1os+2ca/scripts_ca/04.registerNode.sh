ADMIN_ORG1_PATH="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1/users/Admin@org1"
ADMIN_ORG2_PATH="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org2/users/Admin@org2"
ADMIN_ORDERER_PATH="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/ordererorg0/users/Admin@ordererorg0"

#fabric-ca-client register --id.secret=peer0password -H $ADMIN_ORG1_PATH
#fabric-ca-client register --id.secret=peer1password -H $ADMIN_ORG1_PATH
#fabric-ca-client register --id.secret=peer2password -H $ADMIN_ORG2_PATH
#fabric-ca-client register --id.secret=peer3password -H $ADMIN_ORG2_PATH
fabric-ca-client register --id.secret=orderer0password -H $ADMIN_ORDERER_PATH
