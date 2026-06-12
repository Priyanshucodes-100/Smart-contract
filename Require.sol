// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Require {

    function checkInput(uint256 _input)
        public
        pure
        returns (string memory)
    {
        require(_input <= 255, "Input is greater than uint8 range");

        return "Input fits in uint8";
    }

    function odd(uint256 _input)
        public
        pure
        returns (bool)
    {
        require(_input % 2 != 0, "Input is not odd");

        return true;
    }
}