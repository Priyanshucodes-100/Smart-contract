// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

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
