// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.6.0 <0.8.20;

contract dataTypes {

    //pirania smart contract 

    uint numero;

    //ponemos public para que se pueda interactuar normalmente 
    //con la funcion sin que sea dentro del contrato
    function store(uint _numero) public {

        numero = _numero;
    }

    function retrieve() public view returns (uint){

        return numero;
    }
   
}


