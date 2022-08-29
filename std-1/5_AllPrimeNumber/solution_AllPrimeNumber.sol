// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract AllPrimeNumber{

    uint[] private _primeNumberList=[2];

    function addPrime(uint num) public {
        require (num>2, "number must be superior to 2");
        
    //number superior to last number used to get the list
        if (_primeNumberList[_primeNumberList.length-1]<num) {
            for (uint i=_primeNumberList[_primeNumberList.length-1]+1 ; i<=num-1; i++) {
                if (ifPrime(i)) _primeNumberList.push(i);
            }
        }

    //number inferior to last number used to get the list
        else {

            for (uint i=_primeNumberList.length-1 ; i>=0; i--) {
                if (_primeNumberList[i]>=num) {
                    _primeNumberList.pop();
                }
                else {
                    break;
                }
                
                
            }
        }
    }

    function getPrime() public view returns(uint[] memory) {
        return _primeNumberList;
    }

    function ifPrime(uint a) private pure returns (bool){
        if (a>2) {
            for (uint i=2; i<(a/2)+1;i++) {
                if (a%i==0) return false;
            }
        }
        return true;
    }
}
