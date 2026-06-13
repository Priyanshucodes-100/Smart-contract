// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Array{
    // Several ways to initialize an array

    uint[] public arr;
    uint[] public arr2 =[1,2,3];
    //fixed sized array, all elements initialize to 0
    uint[10] public myFixedsizearr;

    function get(uint i) public view returns (uint){
        return arr[i];

    }

    //solidity can return the entire array.
    //but this function should be avoided for
    //array that can grow indefinitely in length.

    function getArr() public view returns (uint[] memory){
        return arr;
    }

    function push(uint i)public {
        //append to array
        //this will increase the array length by 1.
        arr.push(i);

    }

    function pop()public{
        //remove last element from array
        //this will decrease the array length by 1
        arr.pop();
    }

    function getlength() public view returns (uint){
        return arr.length;
    }

    function remove(uint index)public{
        //delete does not change the array length.
        //it resets the value at indexto its default value.
        delete arr[index];
    }

    function examples() pure external {
        //create array in memory, only fixed size can be created
        uint[] memory a = new uint[](5);
    }

    }
