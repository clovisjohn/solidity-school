// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract EvenOdd{
    //various checks on passed parameters ignored for now
    
    function check(int a) public pure returns (string memory){
    if (a%2==0) return "Even";
    return "Odd";
    }
}
