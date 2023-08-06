// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <=0.8.17;

contract Comparison {
    function compare(int256 a, int256 b) public pure returns (int256) {
        // Write your code here
        if (a == b) return 0;
        if (a > b) return 1;
        if (a < b) return -1;
    }
}
