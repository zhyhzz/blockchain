// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

/**
    To write or update a state variable you need to send a transaction
    On the other hand, you can read state variables, for free. without any transanction fee.
*/
contract SimpleStorage {
    //state variable to store a number;
    uint public num;

    function set(uint _num) public {
        num = _num;
    }

    function get() public view returns(uint) {
        return num;
    }
}