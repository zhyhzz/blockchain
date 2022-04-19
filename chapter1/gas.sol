// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

/**
    Gas Limit
    there are 2 upper bounds to the amount of gas you can spend
        gas limit: max amount of gas you're willing to use for your transaction,set by you 
        block gas limit: max amount of gas allowed in a block, set by the network
*/
contract Gas {
    uint public i = 0;

    function forever() public {
        while(true) {
            i += i;
        }
    }
}