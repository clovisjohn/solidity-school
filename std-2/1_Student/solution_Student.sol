// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract Student {
    mapping(uint => string) private _students;
    event studentEnrolled(uint indexed rollNumber);

    function enroll(uint256 rollNumber, string calldata name) public {
        _students[rollNumber]=name;
        emit studentEnrolled(rollNumber);
    }
}
