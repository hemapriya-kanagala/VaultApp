// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library mathLib {
    function plus(uint a, uint b) internal pure returns (uint) {
        uint c = a + b;
        require(c >= a, "Add overflow");
        return c;
    }

    function minus(uint a, uint b) internal pure returns (uint) {
        require(b <= a, "Sub underflow");
        return a - b;
    }
}
