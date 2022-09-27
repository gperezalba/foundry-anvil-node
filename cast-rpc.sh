#!/bin/sh
cast rpc --rpc-url http://127.0.0.1:8545 anvil_impersonateAccount $1
cast rpc --rpc-url http://127.0.0.1:8545 anvil_setBalance $1 1000000000000000000
cast send --rpc-url http://127.0.0.1:8545 --from $1 $2 "grantRole(bytes32,address)" 0x0000000000000000000000000000000000000000000000000000000000000000 $3