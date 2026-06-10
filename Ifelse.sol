// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

contract Ifelse{

    uint256 public mynum = 5;
    string public mystring;

    function getdata(uint256 _num)public returns(string memory){

        return _num == 5 ? mystring = "hello" : mystring = "bolo";
    }

    }