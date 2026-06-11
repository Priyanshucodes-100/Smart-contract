// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;
contract Asserstatement{

    bool public result;

    function checkOverflow(uint256 _num1, uint256 _num2)public {
        uint256 sum = _num1 + _num2;
        assert(sum <= 300);
        result = true;

    }

    function getresults()public view returns(string memory){
        if (result == true) {
            return "no overflow";
        }else{
            return "overflow exist";
        }
    }
}