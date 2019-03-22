FROM hyperledger/fabric-tools:latest

RUN apt-get install tree
RUN go get -u github.com/hyperledger/fabric-ca/cmd/fabric-ca-client
ENV FABRIC_CA_CLIENT_HOME $HOME/.fabric-ca-client

CMD ["/bin/bash"]
