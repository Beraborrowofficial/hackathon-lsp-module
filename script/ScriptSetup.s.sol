// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {Script, console2} from "forge-std/Script.sol";
import {ILiquidStabilityPool} from "src/interfaces/core/ILiquidStabilityPool.sol";
import {LiquidStabilityPoolGetters} from "src/helpers/LiquidStabilityPoolGetters.sol";

contract ScriptSetup is Script {
    ILiquidStabilityPool liquidStabilityPool;
    LiquidStabilityPoolGetters liquidStabilityPoolGetters;

    function setUp() public virtual {
        // Select an specific block number to maintian the same state, once we want to test different scensarios, we can have varius forkIds
        string memory RPC_URL = vm.envString("RPC_URL"); // RPC URL to fork, ideally Anvil with an instance of Berachain testnet
        console2.log("Forking from: %s", RPC_URL);

        liquidStabilityPool = ILiquidStabilityPool(
            vm.envAddress("LIQUID_STABILITY_POOL_PROXY")
        );
        liquidStabilityPoolGetters = LiquidStabilityPoolGetters(
            vm.envAddress("LIQUID_STABILITY_POOL_GETTERS")
        );
    }
}