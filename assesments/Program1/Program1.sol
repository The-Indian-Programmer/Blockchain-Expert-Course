// SPDX-License-Identifier: MIT

pragma solidity >=0.4.22 <=0.8.17;

contract Richest {
    address richest;
    uint256 mostSent;
    mapping(address => uint256) pendingWithdrawls;

    function becomeRichest() external payable returns (bool) {
        if (msg.value <= mostSent) {
            return false;
        }

        pendingWithdrawls[richest] += mostSent;
        richest = msg.sender;
        mostSent = msg.value;
        return true;
    }

    function withdraw() external {
        uint256 amount = pendingWithdrawls[msg.sender];
        pendingWithdrawls[msg.sender] = 0; // important to do this before transferring the funds to avoid reentrance
        (bool sent, ) = payable(msg.sender).call{value: amount}("");
        require(sent);
    }

    function getRichest() public view returns (address) {
        return richest;
    }
}
