fabric-ca-client getcacert -u http://ca3.example.com:7054 -M /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org3/msp

# Create org3 account with fabric-ca-client-config.yaml
fabric-ca-client register --id.secret=org3password

# Enroll and Create MSP
ADMIN_ORG3_PATH="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org3/users/Admin@org3"
fabric-ca-client enroll -u http://Admin@org3:org3password@ca3.example.com:7054 -H $ADMIN_ORG3_PATH
# ->ca.crt and ->server.key
mkdir -p $ADMIN_ORG3_PATH/msp/admincerts
cp $ADMIN_ORG3_PATH/msp/signcerts/cert.pem $ADMIN_ORG3_PATH/msp/admincerts/Admin@org3-cert.pem


#To Do

# Create peers msp in org3 account with fabric-ca-client-config,yaml at each node
ADMIN_ORG3_PATH="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org3/users/Admin@org3"
fabric-ca-client register --id.secret=peer4password -H $ADMIN_ORG3_PATH
#fabric-ca-client register --id.secret=peer4password -H /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org3/users/Admin@org3
# change fabric-ca-client-config.yaml
fabric-ca-client register --id.secret=peer5password -H $ADMIN_ORG3_PATH
#fabric-ca-client register --id.secret=peer5password -H /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org3/users/Admin@org3

# Enroll peers
PEER4_PATH="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org3/peers/peer4.org3/"
PEER5_PATH="/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org3/peers/peer5.org3/"
fabric-ca-client enroll -u http://peer4:peer4password@ca3.example.com:7054 -H $PEER4_PATH
# fabric-ca-client enroll -u http://peer4:peer4password@ca3.example.com:7054 -H /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org3/peers/peer4.org3/
# ->ca.crt and ->server.key
fabric-ca-client enroll -u http://peer4:peer4password@ca3.example.com:7054 -H $PEER5_PATH
# fabric-ca-client enroll -u http://peer4:peer4password@ca3.example.com:7054 -H /opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org3/peers/peer5.org3/
# ->ca.crt and ->server.key


# admincerts <- org3 admin
# make tls and copy








