// SPDX-License-Identifier: MIT

pragma solidity ^0.8.5;

/**
* // Events declaration 
* // Up to 3 parameters can be indexed
* // Indexed parameters helps you filter the logs by the indexed parameter
*/
contract Event {
    event log(address indexed sender, string message);
    event AnotherLog();

    function test() public {
        emit log(msg.sender, "Hello World");
        emit log(msg.sender, "Hello EVM");
        emit AnotherLog();
    }
}