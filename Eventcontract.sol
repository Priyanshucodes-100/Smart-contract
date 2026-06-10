// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

contract    Eventmanager{

    uint256 ticketprice;
    uint256 noOfticket;
    uint256 totalamount;
    uint256 startAt;
    uint256 endAt;
    uint256 timerange;
    string message = "buy your ticket";
    
    constructor(uint256 _ticketprice){

        ticketprice = _ticketprice;
        startAt = block.timestamp;
        endAt = block.timestamp + 7 days;
        timerange = (endAt-startAt)/60/60/24;
    }

    function buyticket(uint256 _value)public returns(uint256 ticketId){
        noOfticket++;
        totalamount += _value;
        ticketId = noOfticket;

    }

    function getamount()public view returns(uint256){
        return totalamount;
    }
}