// SPDX-License-Identifier: MIT

pragma solidity ^0.8.5;

contract X {
    string public name;

    constructor(string memory _name) {
        name = _name;
    }
}

contract Y {
    string public text;

    constructor(string memory _text) {
        text = _text;
    }
}

contract B is X("input to X"), Y("input to Y") {

}

contract C is X, Y {
    //Pass the parameters here in the constructor,
    //similar to functino modifiers
    constructor(string memory _name, string memory _text) X(_name) Y(_text) {}
}

//parent constructors are always called in the order of inheritance
//regardless of the order of parent contracts listed in the constructor of the child contract

//Order of constructors called:
//1. X
//2. Y
//3. D
contract D is X, Y {
    constructor() X ("X was called") Y ("Y was called") {}
} 

//Order of constructors called:
//1. X
//2. Y
//3. E
contract E is X, Y {
    constructor() Y("Y was called") X("X cwas called") {}
}