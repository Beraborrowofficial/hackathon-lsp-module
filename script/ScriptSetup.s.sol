// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {Script, console2} from "forge-std/Script.sol";
import {ILiquidStabilityPool} from "src/interfaces/core/ILiquidStabilityPool.sol";
import {LiquidStabilityPoolGetters} from "src/helpers/LiquidStabilityPoolGetters.sol";

contract ScriptSetup is Script {
    ILiquidStabilityPool liquidStabilityPool;
    LiquidStabilityPoolGetters liquidStabilityPoolGetters;

    //For any permissioned behaviour after forking contracts
    //Fee receiver and owner are the same address
    address owner = vm.envAddress("OWNER");

    function setUp() public virtual {
        vm.startBroadcast();
        string memory RPC_URL = vm.envString("RPC_URL");
        console2.log("Forking from: %s", RPC_URL);

        liquidStabilityPool = ILiquidStabilityPool(vm.envAddress("LIQUID_STABILITY_POOL_PROXY"));
        liquidStabilityPoolGetters = LiquidStabilityPoolGetters(vm.envAddress("LSP_GETTERS"));
    }
}
