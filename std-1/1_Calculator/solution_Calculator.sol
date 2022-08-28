// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract Calculator {
    //various checks on passed parameters ignored for now
    
    function addition(int a,int b) public pure returns (int){
    return a+b;
    }

    function subtraction(int a,int b) public pure returns (int) {
    return a-b;
    }

    function multiplication (int a,int b) public pure returns (int) {
    return a*b;
    }

    function division(int a,int b) public pure returns (int) {
    return a/b;
    }

}
