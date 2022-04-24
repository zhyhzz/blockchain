// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Function {
    function returnMany() public pure returns (uint, bool, uint) {
        return (1, true, 2);
    }

    //Return values can be named.
    function named() public pure returns (uint x, bool y, uint z) {
        return (1, true, 2);
    }

    //Return values can be assigned to their name
    function assigned() public pure returns (uint x, bool b, uint y) {
        x = 1;
        b = true;
        y = 2;
    }

    //Use destructuring assignment when calling another
    function destructuringAssignments() public pure returns(uint, bool, uint, uint, uint) {
        (uint i, bool b, uint j) = returnMany();

        //Values can be left out
        (uint x, , uint y)  = (4,5,6);

        return (i, b, j, x, y);
    }

    //cannot use map for either input or output
    function arrayInput(uint[] memory _arr) public {}

    //can use array for output
    uint[] public arr;

    function arrayOutput() public view returns (uint[] memory) {
        return arr;
    }
    
}