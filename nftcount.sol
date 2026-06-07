//SPDX-License-identifier : MIT;\
pragma solidity ^0.8.9;

contract Nftcount{

    uint256 public numberofNFT;

    function checktotalNFT()public view returns (uint256){
        return numberofNFT;
    }
//  returns
// In the function header (declaration)
// Tells the compiler what type the function will give back
// //return
// Inside the function body
// Actually sends back the value when the function runs


    function addNFT() public{
        numberofNFT += 1;
    }

    function deleteNFT() public{
        numberofNFT -= 1;
    }
    }

