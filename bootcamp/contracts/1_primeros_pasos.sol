// SPDX-License-Identifier: MIT

// Version
pragma solidity  ^0.8.4;

// Importar un smart contract desde Open Zeppelin

import "@openzeppelin/contracts@4.5.0/token/ERC721/ERC721.sol";

// Declaración del smart contract

contract FirstContract is ERC721 {
    // Dirección del OWNER
    address public owner;
    /*
    Almacenamos en owner la dirección del que despliega el contrato
    */
    
    constructor(string memory _name, string memory _symbol) ERC721(_name, _symbol) {
        owner = msg.sender;
    }

}
