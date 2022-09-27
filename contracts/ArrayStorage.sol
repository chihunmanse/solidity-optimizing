// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract ArrayStorage {
    uint256[] private myArray;

    function set(uint256[] calldata _value) external {
        myArray = _value;
    }

    function getLength() external view returns (uint256) {
        return myArray.length;
    }

    function getSlotValue() external view returns(uint256 value) {
        assembly {
            value := sload(myArray.slot)
        }
    }
} 