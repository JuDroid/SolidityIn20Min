// SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.20;

contract modificadores {

    uint public numero = 10;
    uint public balance;

    // los modificadores te permite aplicar restricciones o condiciones adicionales a una o varias
    //funciones en un contrato. los modificadores nativos principales son: view, pure y payable

    // funciones view no pueden alterar los datos en la blockchain pero si pueden leerlos
    //para alterarlos tendriamos que quitarle el view
    function funcionView() public view returns(uint){   

        return numero; 
    }

    // funciones pure no pueden ni leer ni modificar el estado de
    // un contrato por lo que son usadas principalmente para devolver 
    // resultados de operaciones matematicas
    function funcionPure(uint inputNumero) public pure returns(uint){   

        uint numeroRamd = 5;

        return inputNumero + numeroRamd; 
    }

    //funciones pagables son funciones que se usan cuando se espera
    //recibir ether o un activo  
    function funcionPagable() public payable {

        balance = msg.value;
    }
}