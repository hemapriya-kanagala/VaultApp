// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract vaultBaseContract {
    mapping(address => uint) public savedAmounts;

    event moneyAdded(address user, uint amount);
    event moneyTaken(address user, uint amount);
}
