// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


contract Voting {
    mapping(address => bool) voted;
    mapping(uint8 => uint8) votes;
    uint8 currentWinner;
    uint8 mostVotes;

    function vote(uint8 number) public {
        require(!voted[msg.sender], "address has already voted");
        require(number <= 5 && number >= 1, "number not in range 1-5");

        voted[msg.sender] = true;
        votes[number]++;

        if (votes[number] >= mostVotes) {
            currentWinner = number;
            mostVotes = votes[number];
        }
    }

    function getVotes(uint8 number) public view returns (uint8) {
        require(number <= 5 && number >= 1, "number not in range 1-5");
        return votes[number];
    }

    function getCurrentWinner() public view returns (uint8) {
        if (currentWinner == 0) {
            return 1;
        }

        return currentWinner;
    }
}
