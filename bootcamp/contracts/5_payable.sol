// SPDX-License-Identifier:MIT

pragma solidity ^0.8.4;

contract ethSend {
    constructor() payable {}
    receive() external payable {}


    // Eventos
    event sendStatus(bool);
    event callStatus(bool,bytes);
    // Transfer
    function sendViaTransfer(address payable _to) public payable {
        _to.transfer(1 ether);
        //_to.transfer(1); wei
    }


    // Send
    function sendViaSend (address payable _to) public payable {
       //el send devuelve un booleano true o false si se envió correctamente
       
        bool sent = _to.send(1 ether);
        emit sendStatus(sent);
        require(sent == true, "El envio ha fallado");
    }


    function sendViaCall(address payable _to) public payable {
       //send y transfer mandan 2300 wei de gas, esta call manda todo el gas para que no esté restringido
       
        (bool success, bytes memory data) = _to.call{value: 1 ether}("");
        emit callStatus(success, data);
        require(success == true, "El envio fallo");
    
    }


    
}

contract ethReceiver {
        event log(uint amount, uint gas);

        receive() external payable {
            emit log(address(this).balance, gasleft());
        }

}

