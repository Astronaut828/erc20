// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Script, console} from "forge-std/Script.sol";
import {TokenFactory, InstantLiquidityToken} from "../src/TokenFactory.sol";

contract DeployToken is Script {

    function run() public {
        vm.broadcast();
        _run(0x5eD5A9b33019a2C08AAD51dD8ebbB75acA70c6A1);
    }
    function _run(address _factory) public returns (InstantLiquidityToken) {
        TokenFactory factory = TokenFactory(_factory);
        InstantLiquidityToken token = factory.deploy("Token", "TKN");

        console.log("token", address(token));

        return token;
    }
}
