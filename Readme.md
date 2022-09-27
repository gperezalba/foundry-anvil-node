``docker build -t foundry-anvil-node .``
``docker run -d -p 8545:8545 --name foundry-anvil-node -e HOST_IP=0.0.0.0 -e RPC_PORT=8545 -e FORK_URL=https://polygon-rpc.com/ foundry-anvil-node``
``docker exec -it foundry-anvil-node /app/cast-rpc.sh 0x5ACB3043da168b59b775eA28F3942597F45e9543 0x73205567d90A45533879eF39a29920056225eFB2 0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266``
``docker exec -it foundry-anvil-node /app/cast-rpc.sh MS MANAGER EOA``