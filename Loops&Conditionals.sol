// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract MyContract {
    uint256[] public numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // Conditionals
    function isEvenNumber(uint256 _number) public pure returns (bool) {
        if (_number % 2 == 0) {
            return true;
        }
        return false;
    }

    // Conditional + Loop
    function countEvenNumbers() public view returns (uint256) {
        uint256 count = 0;

        for (uint256 x = 0; x < numbers.length; x++) {
            if (numbers[x] % 2 == 0) {
                count += 1;
            }
        }
        return count;
    }

    function isOwner() public view returns (bool) {
        return (msg.sender == owner);
    }
}
