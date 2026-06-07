// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GlobalVariableExample {
    // State variables (can be considered as global variables)
    uint256 public globalNumber = 42;
    address public owner = msg.sender;

    // Function to update the state variable
    function updateGlobalNumber(uint256 newValue) public {
        // Only the owner can update the globalNumber
        require(msg.sender == owner, "Only the owner can update globalNumber");
        
        // Updating the globalNumber
        globalNumber = newValue;
    }
}
