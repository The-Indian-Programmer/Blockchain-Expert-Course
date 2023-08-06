// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <=0.8.17;

contract Inventory {
    // Write your code here
    mapping (uint => int) quantities;

    function addItem(uint256 itemId, uint256 quantity) public {
        quantities[itemId] += int(quantity);
    }

    function getQuantity(uint256 itemId) public view returns (int256) {
        if (quantities[itemId] == 0) return -1;
        return int256(quantities[itemId]);
    }
}
