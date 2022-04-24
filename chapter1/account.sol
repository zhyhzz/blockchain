// SPDX-License-Identifier: MIT

pragma solidity ^0.8.5;

contract Account {
    uint public balance;
    uint public constant MAX_UINT = 2**256 - 1;

    function deposit(uint _amount) public {
        uint oldBalance = balance;
        uint newBalance = balance + _amount;

        //blance + _amount does not overflow if balance + _amount >= balance
        require(newBalance >= oldBalance, "Overflow");

        balance = newBalance;

        assert(balance >= oldBalance);
    }

    function withdraw(uint _amount) public {
        uint oldBalance = balance;

        //balance - _amount does not underflow if balance >= amount
        require(balance >= _amount, "underflow");

        if(balance < _amount) {
            revert("underflow");
        }

        balance -= _amount;
        assert(balance <= oldBalance);
    }
}