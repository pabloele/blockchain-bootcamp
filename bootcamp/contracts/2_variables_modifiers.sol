// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract variables_modifiers {
    // Valores enteros sin signos {uint}
    uint256 a;
    uint8 public b = 3;

    //Valores enteros con signo {int}
    int256 c;
    int8 public d = -32;
    int e = 65;


    // Variable string
    string str;
    string public str_public = "Esto es publico";
    string private str_priv = "Esto es privado";

    // Variable Booleana
    bool boolean;
    bool public boolean_true = true;
    bool private boolean_priv = false;

    // Variable Byte
    bytes32 first_bytes;
    bytes4 second_bytes;
    bytes1 public byte1 = "4";

    // Algoritmo de hash

    bytes32 public hashing = keccak256(abi.encodePacked("Hola", "Pablo", uint(10), msg.sender, 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4));
    bytes32 public hashing_sha256 = sha256(abi.encodePacked("Hello world"));
    bytes20 public hashing_ripeMD160 = ripemd160(abi.encodePacked(("Hello world")));
    
    
    // Variable address
    address my_address;
    address public address1 = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address public address2 = msg.sender;

 // Variable de enomeración (no necesita punto y coma)   
    enum options {on, off}

    options state;
    options constant defaultChoice = options.off;

    function turnOn() public {
        state = options.on;
    }


    function turnOf() public {
        state = options.off;
    }

    function displayState() public view returns(options){
        return state;
    } 

}