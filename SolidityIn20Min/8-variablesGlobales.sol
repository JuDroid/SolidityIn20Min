// SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.20;

contract modifPersonalizados {

    address public direccionContrato;
    address public pagador;
    address public origen;
    uint public cantidad;

    constructor (){ 
        direccionContrato = address(this); //almacena la direccion de "this" osea este contrato 
    }

    function pagar() public payable {

        pagador = msg.sender;
        origen = tx.origin;
        cantidad = msg.value;
    }

}