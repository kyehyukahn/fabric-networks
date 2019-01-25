# fabric-networks
investigate hyperledger fabric networks with many configurations
# Tutorial of fabric-networks

**Notice: The tutorial is still in-progress.**

## 0. Pre-requisites

### 0.1. Install Fabric SDK

```bash
$ git clone https://github.com/kyehyukahn/fabric-networks.git
$ cd fabric-networks
```

After cloning the code, you can choose the type of network

### 0.2. Start a Fabric Network

To start an example fabric network you can simply run the following command:

```bash
$ docker pull hyperledger/fabric-peer:1.4.0
$ docker pull hyperledger/fabric-orderer:1.4.0
$ docker pull hyperledger/fabric-ca:1.4.0
$ docker pull hyperledger/fabric-ccenv:1.4.0
$ cd 7p@30W1os
$ docker-compose -f docker-compose-xxx.yaml up
```

Then you'll have a fabric network with topology of 3 organizations:
 * org1.example.com
   * peer0.org1.example.com
   * peer1.org1.example.com
 * org2.example.com
   * peer0.org2.example.com
   * peer1.org2.example.com
 * orderer.example.com
   * orderer.example.com

* Note: make sure `configtxgen` is in the 'PATH' and the recommended version of `configtxgen` is 1.3.0
* It is recmmended to use `configtxgen` 1.3.0 and set logging level to DEBUG or INFO when you meet a problem

If you want to understand more details on starting up a fabric network, feel free to see the [Building Your First Network](https://hyperledger-fabric.readthedocs.io/en/latest/build_network.html) tutorial.

