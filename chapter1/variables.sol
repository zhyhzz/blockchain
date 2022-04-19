// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;


/**
    local:
        1. declared inside a function
        2. not stored on the blockchain
    state:
        1. declared outside a function
        2. stored on the blockchain
    global:
        provides information about the blockchain        
*/
contract Variables {
    string public text = "HelloWorld";
    uint public num = 123;

    function doSomething() public {
        uint i = 243;

        uint timestamp = block.timestamp;
        //address of the caller
        address sender = msg.sender;
    }
}