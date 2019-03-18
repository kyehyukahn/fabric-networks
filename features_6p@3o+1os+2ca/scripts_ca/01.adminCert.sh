#mkdir -p $BASIC_LOCALMSPDIR
fabric-ca-client getcacert -u http://ca.example.com:7054 -M /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1/msp
fabric-ca-client getcacert -u http://ca.example.com:7054 -M /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org2/msp
fabric-ca-client getcacert -u http://ca.example.com:7054 -M /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/ordererOrganizations/ordererorg0/msp

