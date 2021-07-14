// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract HotelRoom {
    address payable public owner;
    enum Statuses {
        Vacant,
        Occupied
    }
    Statuses currentStatus;

    event Occupy(address _occupant, uint256 _value);

    constructor() {
        owner = payable(msg.sender);
        currentStatus = Statuses.Vacant;
    }

    modifier whileVacant {
        require(currentStatus == Statuses.Vacant, "Currently occupied.");
        _;
    }

    modifier costs(uint256 _amount) {
        require(msg.value >= _amount, "Not enough Ether provided.");
        _;
    }

    // recieve() = default run when ether sent to contract
    receive() external payable whileVacant costs(2 ether) {
        currentStatus = Statuses.Occupied;
        owner.transfer(msg.value);
        emit Occupy(msg.sender, msg.value);
    }
}
