// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract Owner {

    address private _owner;
    event ownerSet(address indexed owner);

    function setOwner(address newOwner) private {
        _owner = newOwner;
        emit ownerSet(_owner);
    }
    
    function showOwner() public view returns(address) {
        return _owner;
    }
}
