// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";

import "src/LockUSDT.sol";
import "src/USDT.sol";

contract LockUSDTTest is Test{
    event Transfer(address indexed from, address indexed to, uint256 value);
    LockUSDT lockUsdt;
    USDT usdt;

    function setUp() public{
        usdt=new USDT();
        lockUsdt=new LockUSDT(address(usdt));
    }

    function testDepositAndWithdraw() public{
        usdt.mint(0xf6142Eeb765187b908B1485BFc8772F24A6E2b2A, 100);
        vm.startPrank(0xf6142Eeb765187b908B1485BFc8772F24A6E2b2A);
        usdt.approve(address(lockUsdt), 100);

        lockUsdt.deposit(100);
        assertEq(usdt.balanceOf(0xf6142Eeb765187b908B1485BFc8772F24A6E2b2A), 0);
        assertEq(usdt.balanceOf(address(lockUsdt)), 100);

        lockUsdt.withdraw(50);

        assertEq(usdt.balanceOf(0xf6142Eeb765187b908B1485BFc8772F24A6E2b2A), 50);
        assertEq(usdt.balanceOf(address(lockUsdt)), 50);

        vm.stopPrank();
    }
}