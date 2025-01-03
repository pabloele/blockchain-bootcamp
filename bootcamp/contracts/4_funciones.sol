// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract functions {
    // Functiones de tipo Pure

    function getName() public pure returns (string memory) {
        return "Pablo";
    }

    // Funciones view

    uint256 x = 100;
    function getNumber() public view returns (uint256){
        return x*2;
    }

    

}