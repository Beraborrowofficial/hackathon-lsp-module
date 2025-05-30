// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import {ScriptSetup} from "script/ScriptSetup.s.sol";

contract DeployLsp is ScriptSetup {
    function setUp() public virtual override {
        super.setUp();
        // insert any additional setup code here
    }

    function run() public virtual {
        vm.startBroadcast();
        // insert deployment code here
        // e.g., deploy a contract, set up initial state, etc.
    }
}
