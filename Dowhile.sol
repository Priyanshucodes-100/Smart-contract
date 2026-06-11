// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;

contract Dowhile{
    uint256 [] data;
    uint256 j =0 ;

    function loop()public returns(uint256[] memory){

        do{
            j++;
            data.push(j);
        }
        while(j<89);
        return data;
        }
    } 
