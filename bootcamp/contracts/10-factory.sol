// SPDX-License-Identifier:MIT
pragma solidity ^0.8.4;

contract padre {
    // Almacenamiento de informacion del factory
    mapping (address => address) public personal_contract;

    //Emision de nuevos smart contracts
    function Factory() public {
        address addr_personal_contract = address(new hijo(msg.sender, address(this)));
        personal_contract[msg.sender] = addr_personal_contract;
    }
}

contract hijo {
    // Estructura del propietario
    Owner public propietario;
    struct Owner {
        address _owner;
        address _smartcontractPadre;
    }
    
    //Datos recibidos al nuevo Smart Contract
    constructor (address _account, address _accountSC){
        propietario._owner = _account;
        propietario._smartcontractPadre = _accountSC;
    }
}