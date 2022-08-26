// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract Greeter {
    string private _greetings;
    function changeGreetings(string calldata message) public {
        _greetings = message;
    }

    function greet() public view returns(string memory){
        return _greetings;
    }
}
