// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract Time {
    function getTime(uint256 timestamp) public view returns (uint256) {
        if (timestamp<block.timestamp) {
            return timestamp + 4830; // 1h20mn30s = 4830s. offchain computing to save gas
        }
        return 0;
    }
}
