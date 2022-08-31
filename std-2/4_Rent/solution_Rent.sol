// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract Rent {
    address payable public landlordAddy;
    string public tenant;
    string public occupation;
    uint public age;
    constructor (string memory providedName, string memory providedOccupation, uint providedAge) {
        tenant = providedName;
        occupation = providedOccupation;
        age = providedAge;
        landlordAddy = payable(msg.sender);

    }

    fallback() external payable {
        (bool success, ) = landlordAddy.call{value: msg.value}("");
        require(success, "Transfer failed.");
    }
    
    receive() external payable {
        (bool success, ) = landlordAddy.call{value: msg.value}("");
        require(success, "Transfer failed.");
    }












}
