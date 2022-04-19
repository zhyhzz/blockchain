// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Array {
    uint[] public arr;
    uint[] public arr2 = [1,2,3];

    //Fixed sized array, all elements initialize to 0
    uint[10] public myFixedSizeArr;

    function get(uint i) public view returns(uint) {
        return arr[i];
    }

    //solidity can return the entire array
    //but this function should be avoided for
    //arrays that can grow indefinitely in length
    function getArr() public view returns(uint[] memory) {
        return arr;
    }

    function push(uint i) public {
        arr.push(i);
    }

    function pop() public {
        arr.pop();
    }

    function getLength() public view returns(uint) {
        return arr.length;
    }

    function remove(uint index) public {
        delete arr[index];
    }

    function examples() external {
        uint[] memory a = new uint[](5);
    }
}