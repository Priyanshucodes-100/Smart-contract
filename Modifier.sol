// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;
contract Modifier{

    address public owner;
    uint256 public x =10;
    bool public locked;

    constructor(){
        owner = msg.sender;
    }
    //modifier are code that can be run before and after the function call
    //generally used for 3 reason
    //Restrict access, validate inputs, guard against reentrancy hack.
    modifier onlyowner(){
        require(msg.sender == owner, "Not owner");
        _;
    }

    modifier validatedata(address _addr){
        require(_addr != address(0), "Not valid address");
        _;
    }

    function changeowner(address _newowner)public onlyowner validatedata(_newowner){
        owner = _newowner;
    }

    modifier noReentrancy(){
        require(!locked, " noreenterancy");
        locked =true;
        _;
        locked = false;
    }

    function decrement(uint256 i)public noReentrancy{
        x -= 1;

        if(i>1){
            decrement(i-1);
        }
    }
}
//modifiers
// Modifier is used to restrict access to functions.

//  _ ; represents the function body.
// _; this means that the next line will execute only after running this line.

//  One modifier can be used by many functions.

//  Modifiers can have parameters.

//  Multiple modifiers can be applied to a function.

//  Commonly used for:

// Ownership checks
// Access control
// Input validation
// Pausing contracts