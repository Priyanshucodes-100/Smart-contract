// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Mapping{

    mapping(address => uint)public myMap;

    function get(address _addr)public view returns (uint){
        return myMap[_addr];
    }

    function set(address _addr, uint _i)public {
        myMap[_addr] = _i;
    }

    function remove(address _addr)public{
        delete myMap[_addr];
    }

    }
    contract NestedMapping{
        mapping(address => mapping(uint => bool)) public nested;

        function get(address _addr1, uint _i)public view returns(bool){
            return nested[_addr1][_i];
            
        }

        function set(
            address _addr1,
            uint _i,
            bool _boo
        )public {
            nested[_addr1][_i] = _boo;
        }
    function remove(address _addr1, uint _i)public {
        delete nested[_addr1][_i];
    }
}
// We use mappings for fast storage and retrieval of data using a unique key such as an address, token ID, or user ID. 
// They are gas-efficient and commonly used for balances, ownership records, permissions, and voting systems.