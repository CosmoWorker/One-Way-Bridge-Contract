// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract BridgeBase is Ownable{
    constructor() Ownable(msg.sender){}
    
    function mint() public {
        
    }

    function burn() public{
        
    }

    function depositHappenedOtherSide() public onlyOwner{
        
    }
}