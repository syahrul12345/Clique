FROM ethereum/client-go:latest

COPY ./genesis.json .
# This will initialize the datastore folder
COPY ./run.sh .
RUN chmod +x ./run.sh
RUN ./run.sh
COPY password.txt .
COPY keystore /data/clique/keystore
CMD ["--datadir","data/clique","--networkid","730437","--rpc","--rpcaddr","0.0.0.0","--rpcvhosts=*","--ws","--allow-insecure-unlock","--unlock","0xf73c8753C1Ff2F83eeB8cf2909795759575e0e6d","--password","password.txt","--mine"]