// SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.20;

contract funciones {

    uint numero; //uint texto sin valor definido
    string nombre; //string sin valor definido

    //existen en Solidity funciones de lectura y escritura 

    function asignar(uint _numero, string memory _nombre) public {  

        //asignamos el input que se introduce en la funcion
        //a las variables de estado "numero" y "nombre"

        numero = _numero; 
        nombre = _nombre; 
    }

    function mostrar() public view returns (uint, string memory) {

        //devolvemos el valor de las variables numero y nombre
        return (numero, nombre);
    }

    function resetear() public {

        //aqui reasignamos un nuevo valor arbitrario a numero y nombre
        numero = 10;
        nombre = "Pepe";
    }
}

