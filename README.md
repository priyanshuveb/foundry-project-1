## Aim

The aim of this project is the introduction to the foundry and learn to:

-   Compile and deploy smart contracts
-   Basics of foundry
-   Interact with the deployed smart contract
  
## Preface
The project contains a very simple storage smart contract. The focus of this is on the basics of foundry and not the smart contracts. Following projects will have more elaborative and complex contracts with the introduction to the new foundry tools.

## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build
Compile your solidity files

```shell
$ forge build
```

### Format
Running this commant will format your solidity files
```shell
$ forge fmt
```


### Anvil
-   Runs a local blockchain
-   Default RPC_URL: http://127.0.0.1:8545
-   Chain Id: 31337

```shell
$ anvil
```

### Deploy
If you won't use --broadcast then it will only simulate the transaction but won't deploy it either on the local-chain(anvil) or on-chain
```shell
$ forge script script/SimpleStorage.s.sol:SimpleStorage --rpc-url <your_rpc_url> --private-key <your_private_key> --broadcast
```

### Cast
-   Write to the contract
```shell
$ cast send <contract_address> <function_signature> <value_to_write> --rpc-url <your_rpc_url> --private-key <private-key>
```
-   example:

```shell
$ cast send 0x20A88ab7983Fd079dA9282CFDb1987Df6dCdFb69 "store(uint256)" 68 --rpc-url <your_rpc_url> --private-key <private-key>
```
-   Read from the contract

```shell
$ cast call <contract_address> <function_signature> --rpc-url <rpc_url> 
```
-   example:
```shell
$ cast call 0x20A88ab7983Fd079dA9282CFDb1987Df6dCdFb69 "retrieve()" --rpc-url <rpc-url>
```
### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
