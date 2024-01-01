// SPDX-License-Identifier: MIT

pragma solidity >=0.8.18 <0.9.0;

// We need to tell foundry that this contract is an script we will import the below
import "forge-std/Script.sol";

import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
    function run() external returns(SimpleStorage) {
        // everything after this function will be sent to RP URL
        vm.startBroadcast();
        SimpleStorage simpleStorage = new SimpleStorage();
        // will stop sending to the RPC URL
        vm.stopBroadcast();
        return simpleStorage; 
    }
}

