pragma solidity ^0.8.4;

// SPDX-License-Identifier: MIT

contract MyContract {
    // Array
    uint[] public uinArray = [1,2,3];
    string[] public stringArray = ["test1", "test2", "test3"];
    string[] public values;
    
    // 2D Array
    uint[][] public array2D = [[1,2,3], [4,5,6], [7,8,9]];
    
    function addValue(string memory _value) public {
        values.push(_value);
    }
    
    function valueCount() public view returns(uint){
        return values.length;
    }
}