// SPDX-License-Identifier: GPL-3.0;

pragma solidity >=0.6.0 <0.9.0;

// abstract contracts can have function declaration and are defined(implemented) in derived contract.
// abstract contract cannot be deployed in blockchain.

abstract contract BaseContract {
    uint public x;
    address public owner;

    constructor() {
        x = 5;
        owner = msg.sender;
    }

    // function setX(uint _x) public {
    //     x = _x;
    // }

    // abstract function
    //Functions without implementation must be marked virtual.
    function setX(uint _x) public virtual;

}

// interface is similar to abstract, but must have only function declaration.
// no state varaibles, constructor function implementation.
// Interface can be inherited from other interfaces.

// interface BaseContract {
//     // functions are external and not virtual.
//     function setX(uint _x) external;

// }

//Inheritance: one contract can use functions and variables of another function.
// when deployed; only one contract is created and base contract constructor is called automatically.
// NewContract is derived from baseContract.
// if abstarct contract is derived, then derived contract must implement abstract function Or derived contract should also be made abstract contract.
// abstract contract NewContract is BaseContract {
contract NewContract is BaseContract {
    // uint public x; // for interface
    uint public y = 10;

    //abstract/interface func implementation must be "override".
    function setX(uint _x) public override{
        x = _x;
    }
}
