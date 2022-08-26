// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract Hello_World {
    string public constant hello = "Hello World!";
} // declaring a public variable automatically create a getter for it, easiest implementation

contract Hello_World2 {
    function hello() public pure  returns(string memory) {
        return "Hello World!";
    } 
}
