// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;
contract Modifier{

    address public owner;
    uint256 public x =10;
    bool public locked;

    constructor(){
        owner = msg.sender;
    }

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
}