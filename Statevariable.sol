// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

contract MyContract {
    // State variables
    uint256 public myNumber; // Public state variable
    address private owner;    // Private state variable

    // Constructor function
    constructor() {
        myNumber = 42;
        owner = msg.sender;
    }

    // Function to update the state variable
    function setMyNumber(uint256 newValue) public {
        require(msg.sender == owner, "Only the owner can set the number");
        myNumber = newValue;
    }

    // Function to get the state variable
    function getMyNumber() public view returns (uint256) {
        return myNumber;
    }
}

//1.when you define variable after contract they asre state variables.they actually get stored in the blockchain.
//2.Variables defined inside a function are called local variables and can only execute when we call a function .it will act as memory and will not store on blockchain