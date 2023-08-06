// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract OnlyOwner {
    address public owner;
    uint8 public value;

    error NotOwner();

    modifier onlyOwner() {
        if (msg.sender != owner) revert NotOwner();
        _;
    }

    constructor () {
        owner = msg.sender;
    }

    function add(uint8 number) external onlyOwner {
        value += number;
    }

    function subtract(uint8 number) external onlyOwner {
        value -= number;
    }

    function get() external view returns (uint8) {
        return value;
    }
}
