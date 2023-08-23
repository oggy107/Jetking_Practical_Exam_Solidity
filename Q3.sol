// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract ViewAndPure {
    address owner;

    constructor() {
        owner = msg.sender;
    }
    
    // This is a view function which means that it can only view the current state and can not modidify it
    // Here it reads the state from a storage varialbe named `owner`
    function getOwnerAddress() external view returns (address) {
        return owner;
    }

    // This is a pure function which means that it can neither read nor write to the state
    function greet() external pure returns (string memory) {
        return "Hello there :)";
    }
}