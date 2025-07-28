// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./vaultBaseContract.sol";
import "./mathLib.sol";

contract myVaultApp is vaultBaseContract {
    using mathLib for uint;
    function addMoney() external payable {
        require(msg.value > 0, "Can't add 0 ETH");

        savedAmounts[msg.sender] = savedAmounts[msg.sender].plus(msg.value);

        emit moneyAdded(msg.sender, msg.value);
    }
    function takeMoney(uint amount) external {
        require(amount > 0, "Amount must be more than 0");
        require(savedAmounts[msg.sender] >= amount, "Not enough in your vault");

        savedAmounts[msg.sender] = savedAmounts[msg.sender].minus(amount);

        payable(msg.sender).transfer(amount);

        emit moneyTaken(msg.sender, amount);
    }
}


