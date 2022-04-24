// SPDX-License-Identifier: MIT

pragma solidity ^0.8.5;

contract ErrorTest {
    function testRequire(uint _i) public pure {
        // Require should be used to validate conditions such as: 
        // - inputs
        // - conditions before execution
        // - return values from calls to other function 
        require(_i > 10, "input must be greater than 10");
    }

    function testRevert(uint _i) public pure {
        //revert is useful when the condition to check is complex
        //this code does the exact same thing as the example above
        if(_i <= 10) {
            revert("input must be greater than 10");
        }
    }

    uint public num;

    function testAssert() public view {
        //Assert should only be used to test for internal errors
        //and to check invariants

        //here we assert that num is always wqual to 0
        //since it is impossible to update the value of num
        assert(num == 0);
    }

    //custom error 
    error InsufficientBalance(uint balance, uint withdrawAmount);

    function testCustomError(uint _withdrawAmount) public view {
        uint bal = address(this).balance;
        if(bal < _withdrawAmount) {
            revert InsufficientBalance({balance: bal, withdrawAmount: _withdrawAmount});
        }
    }
}