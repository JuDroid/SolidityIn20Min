//SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.20;

contract estructuras {

    struct libro {

        string nombreLibro;
        uint numeroLibro;
        bool comprado;
    }

    //inicializamos un arreglo que contenga multiples estructuras "libro" como una biblioteca

    libro[] public libros; 

    function agregar(string memory _nombre, uint _numero, bool _comprado) public {

        libros.push(libro(_nombre, _numero, _comprado));
    } 

    function obtener(uint indice) 
        public 
        view 
        returns (string memory, uint, bool)
    {

        libro storage miLibro = libros[indice];
        return (miLibro.nombreLibro, miLibro.numeroLibro, miLibro.comprado);
    } 

    function completarLibro(uint indice) public {
        libro storage miLibro = libros[indice];
        miLibro.comprado = true; 

    }
}