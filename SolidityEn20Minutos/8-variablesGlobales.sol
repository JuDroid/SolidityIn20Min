// SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.20;

contract variablesGlobales {

    address public direccionContrato;
    address public pagador;
    address public origen;
    uint public cantidad;

    constructor (){ 
        direccionContrato = address(this); //almacena la direccion de "this" osea este contrato 
    }

    function pagar() public payable {

        //vemos abajo funciones globales que veremos mucho en funciones payable
        //estas son metodos que contienen aun mas metodos y propiedades

        pagador = msg.sender; // se refiere a la cuenta que hace la llamada a la transaccion
        origen = tx.origin; // se refiere a la direccion del remitente original de la transaccion 
        cantidad = msg.value; //  se refiere a la cantidad de un activo que se envia en la transaccion
    }

    function obtenerInfoBloque() public view returns (uint, uint, uint){

        return(
            block.number, // devuelve el numero del bloque actual en el que esta la transaccion
            block.timestamp, // devuelve la marca de tiempo del bloque actual en segundos
            block.chainid //devuelve el identificador de la cadena de bloques actual
        );
    }

}