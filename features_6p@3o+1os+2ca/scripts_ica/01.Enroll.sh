fabric-ca-client enroll -u http://admin:adminpw@ca3.example.com:7054

fabric-ca-client affiliation list
fabric-ca-client affiliation remove --force org1
fabric-ca-client affiliation remove --force org2

fabric-ca-client affiliation add org3
fabric-ca-client affiliation list
