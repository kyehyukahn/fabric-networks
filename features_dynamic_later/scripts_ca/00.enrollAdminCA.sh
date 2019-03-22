fabric-ca-client enroll -u http://admin:adminpw@ca.example.com:7054

fabric-ca-client affiliation list
fabric-ca-client affiliation remove --force org1
fabric-ca-client affiliation remove --force org2

fabric-ca-client affiliation add org1
fabric-ca-client affiliation add org2
fabric-ca-client affiliation add ordererorg0

fabric-ca-client affiliation list
