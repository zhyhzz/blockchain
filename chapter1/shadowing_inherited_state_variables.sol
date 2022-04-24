// SPDX-License-Identifier: MIT

pragma solidity ^0.8.5;

/**
* Unlike functions, state variables cannot be overridden by re-declaring it in the child contract
*/

contract A {
    string public name = "Contract A";

    function getName() public view returns (string memory){
        return name;
    }
}

// Shadowing is disallowed in solidity 0.6
// This will not compile
// contract B is A {
//      string public name = "Contract B";
// }

contract C is A {
    constructor() {
        name = "Contract C";
    }
}