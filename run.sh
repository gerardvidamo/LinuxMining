MINING_SERVER="us.ravenminer.com"
STATRUM_PORT="6789"
WALLET_ADDRESS="RM6SG2HK5T33y2eU1msPioSpUzd8itcNrS"
MINERS_NAME="miner-"

ccminer/ccminer -a x16r -o stratum+tcp://${MINING_SERVER}:${STATRUM_PORT} -u ${WALLET_ADDRESS} -p ${MINERS_NAME}