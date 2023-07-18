//SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.20;

contract mappings {

    // un mapping es un tipo de dato que contiene "clave" y "valor"
    // y se relacionan de esa manera, llave -> valor

    mapping(uint => string) public nombres; // 1 => miguel, 2 => sara...
    mapping(uint => address) public cuentas; // 1 => 0x39ds8..., 2 => 0x79B2...
    mapping(address => uint) public balances; // 0xh36... => 12.68, 0x2b2... => 0.245...
    mapping(address => bool) public haVotado; // 0xh42... => true, 0x6bb3... => false...
    mapping(address => mapping(uint => bool)) public mappingAnidado; // 0x3b3... => (2 => false)...

}

contract manipularMappings {
    
    mapping (uint => string) public listaCompras;

    function mostrar(uint _id) public view returns(string memory){

        return listaCompras[_id]; // mostramos el valor correspondiente al _id
    }

    function agregar(uint _id, string memory item) public {

        listaCompras[_id] = item; //agregamos el valor en el id puesto
    }

    function quitar(uint _id) public {

        delete listaCompras[_id]; //quitamos el item que corresponda a _id
    }
}