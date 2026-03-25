// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Script} from "forge-std/Script.sol";
import {LimitOrderHook} from "./LimitOrderHook.sol";
import {IPoolManager} from "@uniswap/v4-core/src/interfaces/IPoolManager.sol";

contract HookDeployment is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        // Address of the V4 Pool Manager on local/testnet
        address manager = 0x...; 

        LimitOrderHook hook = new LimitOrderHook(IPoolManager(manager));

        vm.stopBroadcast();
    }
}
