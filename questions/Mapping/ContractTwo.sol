// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <=0.8.17;

contract DebtTracking {
    // Write your code here
    mapping(address => mapping(address => uint)) owing;

    function addDebt(
        address toBePaidAddress,
        address payingAddress,
        uint256 amount
    ) public {
        owing[toBePaidAddress][payingAddress] += amount;
    }

    function payDebt(
        address toBePaidAddress,
        address payingAddress,
        uint256 amount
    ) public {
        owing[toBePaidAddress][payingAddress] -= amount;
    }

    function getDebt(address toBePaidAddress, address payingAddress)
        public
        view
        returns (uint256)
    {
        return uint256(owing[toBePaidAddress][payingAddress]);
    }
}
