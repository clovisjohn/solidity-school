// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract AttendanceRegister {
    struct student {
    string name;
    uint class;
    uint joiningDate;
    }

    uint private _rollN ;
    address immutable private _teacher;
    mapping (uint => student) public register;

    event studentAdded(string indexed name, uint indexed class, uint indexed joiningDate);

    constructor() {
        _teacher = msg.sender;
        _rollN = 0;
    }

    modifier onlyTeacher () {
        require (msg.sender == _teacher);
        _;
    }

    function addStudent(string memory studentName, uint studentClass, uint studentJoinDate) public onlyTeacher {
        student memory newStudent = student({
            name: studentName,
            class: studentClass,
            joiningDate: studentJoinDate
        });

        register[_rollN] = newStudent;

        _rollN++;

        emit studentAdded(studentName,studentClass,studentJoinDate);

        

    }


}
