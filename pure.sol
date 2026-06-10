// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Pure{

    uint256 num1 =45;
    uint256 num2 =18;

    function getdata() public view returns(uint256, uint256){
         uint256 num3 = 12;
         uint256 num4 = 90;

         uint256 product = num4*num1;
         uint256 total = num2 + num3;
         return(product, total);
    }
    
    
}

//PURE is limited to local variable and cannot access the state variable
//| Feature               | pure | view |
// | -------------------- | ---- | ---- |
// | Read state variable  | ❌    | ✅    |
// | Modify state variable| ❌    | ❌    |
// | Use local variables  | ✅    | ✅    |
// | Return calculations  | ✅    | ✅    |


// Here are some key points about pure functions:

// Do Not Access State: Functions marked as pure should not read from or modify state variables.

// Zero Gas Cost for External Calls: When called externally (outside the contract), pure functions have zero gas cost.

// Compile-Time Check: The pure modifier provides a compile-time check to ensure that the function adheres to its declaration.

// Intention Clarity: Using pure makes your code more readable and indicates your intention to have a state-independent function.