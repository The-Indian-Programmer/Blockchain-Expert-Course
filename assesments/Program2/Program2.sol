// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


contract Balances {
    mapping(address => uint256) balances;

    fallback() external payable {
        balances[msg.sender] += msg.value;
    }

    receive() external payable {
        balances[msg.sender] += msg.value;
    }

    function getAmountSent(address addr) public view returns (uint256) {
        return balances[addr];
    }
}