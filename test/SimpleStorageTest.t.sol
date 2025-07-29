// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.24;

import {Test, console} from "forge-std/Test.sol";
import {FirstContract} from "../src/simpleStorage.sol";
import {DeploySimpleStorage} from "../script/DeploySimpleStorage.s.sol";

contract SimpleStorageTest is Test {
    FirstContract firstContract;

    function setUp() public {
        DeploySimpleStorage deploy = new DeploySimpleStorage();
        firstContract = deploy.run();
    }

    function testUpdateNum(uint256 n) public {
        firstContract.UpdateNum(n);
        assertEq(firstContract.num(), n);
    }
}
