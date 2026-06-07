// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LocalVariableExample {
    // State variable
    uint256 public stateVariable;

    // Function that uses local variables
    function performCalculation(uint256 a, uint256 b) public {
        // Local variables
        uint256 result;
        address sender = msg.sender;

        // Performing a simple calculation
        result = a + b;

        // Updating state variable based on the calculation
        stateVariable = result;

        // You can use local variables for other operations within the function...
    }
}