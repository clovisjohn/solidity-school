// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract PrimeNumber{
    //various checks on passed parameters ignored for now
    
    function ifPrime(int a) public pure returns (bool){
        if (a>2 || (a*-1)>2 ) {
            for (int i=2; i<a/2;i++) {
                if (a%i==0) return false;
            }
        }
        return true;
    }
}
