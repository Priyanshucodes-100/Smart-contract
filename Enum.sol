// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Enum{
    enum Status{
        pending,
        shipped,
        accept,
        reject,
        canceled
    }
    
    //default value is the first element listed in
    //definition of the type,in this case "pending"

    Status public status;

    //returns uint
    //pending - 0
    //shipped -1
    //accepted -2
    //reject -3
    //canceled -4

    function get()public view returns(Status){
        return status;
    }

    //update status by passing uint into input
    function set(Status _status) public {
        status = _status;
    }

    //you can update to a specific enum like this
    function cancel() public{
        status = Status.canceled;
    }

    //delete resets the enum to its first value, 0
    function reset() public {
        delete status;
    }


}