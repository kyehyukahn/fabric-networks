PEER0_PATH="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1/peers/peer0.org1/"
PEER1_PATH="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1/peers/peer1.org1/"
PEER2_PATH="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org2/peers/peer2.org2/"
PEER3_PATH="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org2/peers/peer3.org2/"
ORDERER0_PATH="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/ordererorg0/orderers/orderer0.ordererorg0"

#fabric-ca-client enroll -u http://peer0:peer0password@ca.example.com:7054 -H $PEER0_PATH
#fabric-ca-client enroll -u http://peer1:peer1password@ca.example.com:7054 -H $PEER1_PATH
fabric-ca-client enroll -u http://peer2:peer2password@ca.example.com:7054 -H $PEER2_PATH
fabric-ca-client enroll -u http://peer3:peer3password@ca.example.com:7054 -H $PEER3_PATH
#fabric-ca-client enroll -u http://orderer0:orderer0password@ca.example.com:7054 -H $ORDERER0_PATH
