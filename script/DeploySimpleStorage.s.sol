// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import {Script} from "forge-std/Script.sol";
import {FirstContract} from "../src/simpleStorage.sol";

contract DeploySimpleStorage is Script {
    function run() external returns (FirstContract) {
        vm.startBroadcast();
        FirstContract simpleStorage = new FirstContract();
        vm.stopBroadcast();
        return simpleStorage;
    }
}
