// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


/*  this is basically grouping
means suppose you have two smart contract and you want to send ethers 
to both of them if one fails you make sure other one also fails  
(making one set of two of them )*/

contract Utils {                                       
    function groupExecute(uint contractA, uint contractB) external {       // below two smart  contracts are grouped by this function
        contractA(0x....).foo(argA);
        contractb(0x....).bar(argB);
    }
}

contract contractA {
    function foo(uint arg) external{
        //do something 
    }
}

contract contractB {
    function bar(uint arg) external {
        //do something else
    }
}
