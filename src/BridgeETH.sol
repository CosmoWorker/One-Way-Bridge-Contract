// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface CosmoContract{
    function transferFrom(address _to) external;
}

contract BridgeEth is Ownable{
    constructor()Ownable(msg.sender){}

    function deposit() public{
        
    }

    function withdraw() public {
        
    }

    function burnedOtherSide() public onlyOwner{
        
    }
}