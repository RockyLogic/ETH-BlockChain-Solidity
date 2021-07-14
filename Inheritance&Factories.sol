// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

// Inheritance & Smart Contract Interactions
// Factory Pattern - Contract creates contracts (Single not multiple)

//"Ownable" contract to restrict access like @OpenZeppelin Ownable
contract Ownable {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Must be owner");
        _;
    }
}

contract SecretVault {
    string secret;

    constructor(string memory _secret) {
        secret = _secret;
    }

    function getSecret() public view returns (string memory) {
        return secret;
    }
}

//Inherit from Ownable
contract MyContract is Ownable {
    address secretVault;

    constructor(string memory _secret) {
        //Factory Pattern - Contract creates contract (only single in this case)
        SecretVault _secretVault = new SecretVault(_secret);
        secretVault = address(_secretVault);
        super;
    }

    function getSecret() public view onlyOwner returns (string memory) {
        SecretVault _secretVault = SecretVault(secretVault);
        return _secretVault.getSecret();
    }
}
