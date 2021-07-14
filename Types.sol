pragma solidity ^0.8.4;

// SPDX-License-Identifier: MIT

contract MyContract {
    
    // state variables
    // stored on blockchain itself
    int public myInt = 1;
    uint public myUint = 1; 
    uint8 public myUint8 = 1; 
    uint256 public myUint256 = 1;
    
    string public myString = "Hello World!";
    bytes32 public myBytes32 = "Hello World!"; // More efficient smaller mem size
    
    //address types
    address public myAddress = 0x283AA1564de0487DEB39BEbfb9F5A61583e2bc04;
    
    //custom data structures
    struct MyStruct {
        uint myInt;
        string myString;
    }
    
    MyStruct public myStruct = MyStruct(123, "Hello World!");
    
    
    // local variables example
    // local to the function not on blockchain
    function getValue() public pure returns(string memory){
        // local variable
        string memory value = "Hello World!";
        return value;
    }
}