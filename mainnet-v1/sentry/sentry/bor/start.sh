#!/usr/bin/env sh

set -x #echo on

BOR_DIR=${BOR_DIR:-~/.bor}
DATA_DIR=$BOR_DIR/data

bor --datadir $DATA_DIR \
  --port 30303 \
  --http --http.addr '127.0.0.1' \
  --http.vhosts '*' \
  --http.corsdomain '*' \
  --http.port 8545 \
  --ipcpath $DATA_DIR/bor.ipc \
  --http.api 'eth,net,web3,txpool,bor' \
  --syncmode 'full' \
  --networkid '109' \
  --miner.gasprice '30000000000' \
  --miner.gaslimit '20000000' \
  --miner.gastarget '20000000' \
  --txpool.nolocals \
  --txpool.accountslots 16 \
  --txpool.globalslots 32768 \
  --txpool.accountqueue 16 \
  --txpool.globalqueue 32768 \
  --txpool.pricelimit '30000000000' \
  --txpool.lifetime '1h30m0s' \
  --maxpeers 200 \
  --metrics \
  --pprof --pprof.port 7071 --pprof.addr '0.0.0.0'
