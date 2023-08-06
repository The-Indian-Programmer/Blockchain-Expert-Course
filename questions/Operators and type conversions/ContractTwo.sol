// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <=0.8.17;

contract LogicGates {
    function and(bool a, bool b) public pure returns (bool) {
        // Write your code here
        if (a && b) return true;
        return false;
    }

    function or(bool a, bool b) public pure returns (bool) {
        // Write your code here
        if (a || b) return true;
        return false;
    }

    function not(bool a) public pure returns (bool) {
        // Write your code here
        if (!a) return true;
        return false;
    }

    function xor(bool a, bool b) public pure returns (bool) {
        // Write your code here
        if (a && b) return false;
        if (!a && !b) return false;
        return true;
    }
}
