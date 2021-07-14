// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract MyContract {
    // Mappings
    mapping(uint256 => string) public names;

    // Mapping custom structs
    struct Book {
        string title;
        string author;
    }

    mapping(uint256 => Book) public books;

    // Nested Mapping (address specific - ownership)
    mapping(address => mapping(uint256 => Book)) public myBooks;

    constructor() {
        //Empty String if not in mapping
        names[1] = "Rocky";
        names[2] = "Bob";
        names[3] = "Ethereum";
    }

    function addBook(
        uint256 _id,
        string memory _title,
        string memory _author
    ) public {
        books[_id] = Book(_title, _author);
    }

    function addMyBook(
        uint256 _id,
        string memory _title,
        string memory _author
    ) public {
        myBooks[msg.sender][_id] = Book(_title, _author);
    }
}
