// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract NFTcount{
    uint256 public numberofNFT;

    //Check total number of NFT
    function checktotalNFT() public view returns(uint256){
        return numberofNFT;
    }

    //Increment the nft number
    function addNFT() public{
        numberofNFT += 1;
    }

    //Decrement the nft number
    function deleteNFT() public{
        numberofNFT -= 1;
    }
}