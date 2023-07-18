// SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.20;

contract modifPersonalizados {

    address private propietario; //solo accesible en este contrato  
    string public nombreProp; //accesible en donde sea

   //Como vimos anteriormente los modificadores son una forma de agregar
   //condiciones o un flujo determinado a nuestras funciones, pero nosotros
   //mismos tambien podemos crearlos

    constructor (){ //por el momento ignoren el constructor, despues veremos que es
        propietario = msg.sender;
    }

    modifier onlyOwner {

        require(msg.sender == propietario, 'debe ser el propietario para acceder');
        _;
    }

    //le añadimos nuestro modificador personalizado a la funcion
    //y este se encargara de ser como unarestriccion de acceso a la funcion
    function nombrePropietario(string memory _nombreProp) onlyOwner public {   

        nombreProp = _nombreProp;
    }

}