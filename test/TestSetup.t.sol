// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {Test, console2} from "forge-std/Test.sol";
import {ILiquidStabilityPool} from "src/interfaces/core/ILiquidStabilityPool.sol";
import {LiquidStabilityPoolGetters} from "src/helpers/LiquidStabilityPoolGetters.sol";

contract TestSetup is Test {
    ILiquidStabilityPool liquidStabilityPool;
    LiquidStabilityPoolGetters liquidStabilityPoolGetters;

    function setUp() public virtual {
        string memory RPC_URL = vm.envString("RPC_URL");
        console2.log("Forking from: %s", RPC_URL);

        liquidStabilityPool = ILiquidStabilityPool(
            vm.envAddress("LIQUID_STABILITY_POOL_PROXY")
        );
        liquidStabilityPoolGetters = LiquidStabilityPoolGetters(
            vm.envAddress("LIQUID_STABILITY_POOL_GETTERS")
        );
    }
}