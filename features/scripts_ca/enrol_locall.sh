fabric-ca-client enroll -u http://admin:adminpw@0.0.0.0:7054
fabric-ca_client affiliation list
fabric-ca_client affiliation remove --force org1
fabric-ca_client affiliation remove --force org2

fabric-ca-client affiliation add org1
fabric-ca-client affiliation add org2
fabric-ca-client affiliation add orderer

