FROM ethereum/client-go:latest

COPY ./genesis.json .
# This will initialize the datastore folder
RUN apk add --update curl
COPY ./run.sh .
RUN chmod +x ./run.sh
RUN ./run.sh
COPY ./static-nodes.json /data/clique/geth
CMD ["--datadir","data/clique","--networkid","730437","--rpc","--rpcaddr","0.0.0.0","--rpcvhosts=*","--ws","--bootnodes","enode://8e8e58dc348b3dc936556f037d94f83547138ba4261f47698aa07330762fc0010562c07931b48da54abc4b9e7cd99d0cbe927bdaa028d8a6f5544c58824d34e4@bootstrap-node:30303"]