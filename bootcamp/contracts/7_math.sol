// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract maths {

    function suma(uint a, uint b) public pure returns (uint) {
        return a + b;
    }

    function resta(uint a, uint b) public pure returns (uint) {
        return a - b;
    }

    function divi(uint a, uint b) public pure returns (uint) {
        return a / b;
    }

    function exp(uint a, uint b) public pure returns (uint) {
        return a ** b;
    }

    function mod(uint a, uint b) public pure returns (uint) {
        return a % b;
    }

    //(x+y)%k

    function _addmod(uint x, uint y, uint k) public pure returns (uint, uint) {
        return (addmod(x,y,k), (x+y)%k);
    }
    
    //(x*y)%k
    function _mulmod(uint x, uint y, uint k) public pure returns (uint, uint) {
        return (mulmod(x,y,k), (x*y)%k);
    }

}