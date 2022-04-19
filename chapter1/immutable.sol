// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

/**
    immutable修饰的变量是在部署的时候确定变量的值，它在构造函数中赋值一次之后就不会改变，
    这是一个运行时赋值，就可以解除之前constant不支持使用运行时状态赋值的限制
*/
contract  Immutable {
    address public immutable MY_ADDRESS;
    uint public immutable MY_UINT;

    constructor(uint _myUint) {
        MY_ADDRESS = msg.sender;
        MY_UINT = _myUint;
    }
}