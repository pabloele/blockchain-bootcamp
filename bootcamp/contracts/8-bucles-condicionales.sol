// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract loops_conditionals {
    // Suma de los 10 primeros números a partir de un número introducido

  function sum(uint _number) public pure returns (uint) {
    uint aux_sum = 0;

    for (uint i = _number; i < (_number + 10); i++) { 
        aux_sum += i;
    }

    return aux_sum;
  }

    // Suma de los diez primeros numeros impares
  function odd() public pure returns (uint){
    uint aux_sum = 0;
    uint counter = 0;
    uint counter_odd = 0;

    while(counter_odd < 10){
        if (counter % 2 != 0){
            aux_sum = aux_sum + counter;
            counter_odd++;
        }

        counter++;
    }

    return aux_sum;
  }


  function sum_rest(string memory operation, int a, int b) public pure returns (int) {
   
   bytes32 hash_operation = keccak256(abi.encodePacked(operation));
    if (hash_operation == keccak256(abi.encodePacked("suma"))) {
        return a+b;
    } 
    
    else if (hash_operation == keccak256(abi.encodePacked("resta"))){
        return a-b;
    } else if (hash_operation == keccak256(abi.encodePacked("division"))){
        return a/b;
    } else if (hash_operation == keccak256(abi.encodePacked("multiplicacion"))){
        return a*b;
    } else {
        return 0;
    }
  }
}