// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract Storage {
    uint256 public val;
    function store() public {
        val = 5;
    }
} //declaring a public variable automatically create a getter for it, easiest implementation


