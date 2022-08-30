// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.4;

contract Lifecycle {
    enum lifecycle {
        infant,
        toddler,
        child,
        teenAger,
        adult,
        old
    }

    function getStage(uint months) public pure returns (lifecycle) {
        if (months<12) { return lifecycle.infant;  }
        else if (months>=12 && months<24) {return lifecycle.toddler; }
        else if (months>=36 && months<144) {return lifecycle.child; }
        else if (months>=156 && months<228) {return lifecycle.teenAger; }
        else if (months>=240 && months<720) {return lifecycle.adult; }
        else {return lifecycle.old; }
    }

}
