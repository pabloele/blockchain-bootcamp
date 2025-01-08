// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Food {

    struct dinnerPlate {
        string name;
        string ingredients;
    }

    dinnerPlate [] public menu;

    function newMenu(string memory _name, string memory _ingredients) internal {
        menu.push(dinnerPlate(_name, _ingredients));
    }


}
    contract Hamburguer is Food {

        address public owner;

        constructor () {
            owner = msg.sender;
        }


        function doHamburguer(string memory _ingredients, uint _units) external {
            require (_units <=5, "no podes perdir tantas hamburguesas");
            newMenu("Hamburguer", _ingredients);
        }

        modifier onlyOwner() {
            require(owner == msg.sender, "debe ser el owner");
            _;
        }


        function hashPrivateNumber(uint _number) public view onlyOwner returns (bytes32){
                return keccak256(abi.encodePacked(_number));
        }



    }