// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract threeAndSeven{
    //various checks on passed parameters ignored for now
    
    function check(int a) public pure returns (bool){
    return ((a%3==0 || a%7==0) && a>10);
    }
}
