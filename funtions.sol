//SPDX-License-identifier : MIT;
pragma solidity ^0.8.0;

contract Function{

    uint256  hey;

    function getdata()public view returns(uint256){
        
        return hey;
    }
    
    function updatedata(uint256 _hey)public {
        hey = _hey;
    }

    function adddata( uint256 _a ,uint256 _b) public returns(uint256){

        uint256 newnumber = _a + _b;
        hey = newnumber;
        return hey;

    }
}