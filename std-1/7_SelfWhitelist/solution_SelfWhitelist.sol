// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract SelfWhitelist {
    address[] private _whitelistedAddys; //using a mapping would've been better
    
    function whitelist(address toWhitelist) public {
        require(msg.sender==toWhitelist);
        _whitelistedAddys.push(toWhitelist);
    }
    function check() public view returns (bool) {
        for (uint i=0; i<_whitelistedAddys.length ;i++) {
            if (msg.sender==_whitelistedAddys[i]) return true;
        }
        return false;
    }

}
