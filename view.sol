// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

contract View{

    uint256 public Num1 =5;
    uint256 public Num2 =7;

    function getdata()public returns (uint256 product, uint256 total, uint256 diff){

        Num1 += 5;
        
        Num2 += 7;

        product = Num1*Num2;
        total = Num1+Num2;
        diff = Num1-Num2;
    }
}

//if we want to do any changes in state variable we cant use view
//if we want to see the state variable we can use view .
//view are free to be called without creating a transaction, and they do not consume gas when called from outside the contract.
