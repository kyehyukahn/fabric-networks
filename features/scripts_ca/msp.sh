mkdir -p $BASIC_LOCALMSPDIR
fabric-ca-client getcacert -u http://ca.example.com:7054 -M $BASIC_LOCALMSPDIR
