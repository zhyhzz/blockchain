// SPDX-License-Identifier: MIT

pragma solidity ^0.8.5;

/**
*   Parent contracts can be called directly, or by using the keyword 'super'
*   By using the keyword super, all of the immediate parent contracts will be called
*/

contract A {
    //This is called an event. You can emit events from your function.
    //and they are logged into the transaction log.
    //In our case, this will be useful for tracing function calls.
    event Log(string message);

    function foo() public virtual {
        emit Log("A.foo called");
    }

    function bar() public virtual {
        emit Log("A.bar called");
    }
}

contract B is A {
    function foo() public virtual override {
        emit Log("B.foo called");
        A.foo();
    }

    function bar() public virtual override {
        emit Log("B.bar called");
        super.bar();
    }
}

contract C is A {
    function foo() public virtual override {
        emit Log("C.foo called");
        A.foo();
    }

    function bar() public virtual override {
        emit Log("C.bar called");
        super.bar();
    }
}

contract D is B, C {
    // - call D.foo and check the transaction logs.
    // although D inherits A, B, C, it only called C and then A.
    // - call D.bar and check the transaction logs
    // D called C, then B, and finally A.
    // although super was called twice (by B and C) it only called A once

    function foo() public override (B, C) {
        super.foo();
    }

    function bar() public override (B, C) {
        super.bar();
    }
}