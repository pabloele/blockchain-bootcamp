// SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract data_structures {

    // Estructura de datos de un cliente

    struct Customer {
        uint id;
        string name;
        string email;
    }

    // Variable de tipo cliente

    Customer customer_1 = Customer(1, "Pablo", "pablo@gmail.com");


    // Array de uints de longitud fija

    uint256 [5] public fixed_list_uint = [1,2,3,4,5];


    // Array dinámico de uints
    uint256[] dynamic_list_uints;

    // Array dinamico de tipo cliente

    Customer [] public dynamic_list_customers;

    // Nuevos datos en un array

    function array_modification (uint256 _id, string memory _name, string memory _email) public {
      //  Customer memory random_customer = Customer(_id, _name, _email);
        dynamic_list_customers.push(Customer(_id, _name, _email));
    }

    // Mappings
    mapping (address => uint256) public address_uint;
    mapping (string => uint256 []) public string_listUnits;
    mapping (address => Customer) public address_dataStructure;

    // Asignar un nombre a una dirección

    function assignNumber (uint256 _number) public {
        address_uint[msg.sender] = _number; 
    }

    function assignList (string memory _name, uint256 _number) public {
        string_listUnits[_name].push(_number);
    }

    function assignDataStructure (uint _id, string memory _name, string memory _email) public {
        address_dataStructure[msg.sender] = Customer(_id, _name, _email);
    }

}