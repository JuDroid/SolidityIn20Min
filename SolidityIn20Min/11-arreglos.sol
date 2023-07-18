//SPDX-License-Identifier: Unlicense 

pragma solidity ^0.8.20;

contract arreglosEjemplo{

    //ejemplos de arreglos numericos 

    uint[] public arreglo1;
    uint[10] public arreglo2;
    uint[] public arreglo3 = [1, 2, 3, 4, 5];

    //ejemplos de arreglos de texto

    string[] public arreglo4;
    string[5] public arreglo5;
    string[] public arreglo6 = ["hola", "mundo"];

}

contract manipulandoArreglos {

    uint[] public arreglo;

    function mostrarIndice(uint i) public view returns (uint){

        return arreglo[i]; //devolvemos la posicion i del arreglo
    }

    function longitud() public view returns (uint){

        return arreglo.length; //devolvemos la longitud del arreglo
    }

    function agregar(uint valor) public {

        arreglo.push(valor); // agregamos la variable "valor" al final del arreglo
    }

    function quitar() public view {

        arreglo.pop; // quitamos el valor de la posicion final del arreglo
    }

    function quitarEspecifico(uint i) public {

        delete arreglo[i]; // quitamos un valor especifico de la posicion i del arreglo
    }
}