pragma solidity ^0.8.4;

// SPDX-License-Identifier: MIT

contract Counter {
    
    uint public count = 1;
    
    
    function getCount() public view returns(uint) {
        return count;
    }
    
    function incrementCount() public {
        count = count + 1;
    }
    
}