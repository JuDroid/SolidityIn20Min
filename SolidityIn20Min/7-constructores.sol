// SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.20;

contract modifPersonalizados {

    string private nombre;

    //Un constructor es sencillamente una funcion que solo puede ser llamada una vez y ya
    //por lo que se suele usar en acciones sencillas para no gastar gas
    constructor (string memory _nombre){ 
        nombre = _nombre;
    }

}