# TLS Enrollment

PEER1_PATH="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1/peers/peer1.org1/tls"
PEER2_PATH="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org2/peers/peer2.org2/tls"
PEER3_PATH="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org2/peers/peer3.org2/tls"
ORDERER0_PATH="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/ordererorg0/orderers/orderer0.ordererorg0/tls"

fabric-ca-client enroll -u http://peer1:peer1password@ca.example.com:7054 -H $PEER1_PATH --enrollment.profile tls --myhost "peer1.org1.example.com" --csr.hosts "peer1.org1.example.com"
fabric-ca-client enroll -u http://peer2:peer2password@ca.example.com:7054 -H $PEER2_PATH --enrollment.profile tls --myhost "peer2.org2.example.com" --csr.hosts "peer2.org2.example.com"
fabric-ca-client enroll -u http://peer3:peer3password@ca.example.com:7054 -H $PEER3_PATH --enrollment.profile tls --myhost "peer3.org2.example.com" --csr.hosts "peer3.org2.example.com"
fabric-ca-client enroll -u http://orderer0:orderer0password@ca.example.com:7054 -H $ORDERER0_PATH --enrollment.profile tls --myhost "orderer.example.com" --csr.hosts "orderer.example.com"


fabric-ca-client enroll -u http://orderer0:orderer0password@ca.example.com:7054 -H "/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/ordererorg0/orderers/orderer0.ordererorg0/tls" --enrollment.profile tls --myhost "orderer.example.com" --csr.hosts "orderer.example.com"
