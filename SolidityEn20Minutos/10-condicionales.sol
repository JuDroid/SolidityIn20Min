//SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.20;

contract condicionales {

    function parImpar(uint n) public pure returns(string memory){

        // en este caso si el valor restante de n dividido 2 
        // es cero entonces sera impar y se ejecutara el return dentro
        // del if, sino se ejecutara el de dentro del else
        
        if(n % 2 == 0){

            return "el numero es par";
        } else {

            return "el numero es impar";
        }
    }

    function parImpar2(uint n) public pure returns(string memory){

        // aqui aplicamos solo un if y en caso de que no se retorne
        // el valor dentro del mismo entonces ejecutara el return
        // que hay por fuera del if

        if(n % 2 == 0){

            return "el numero es par";
        } 

        return "el numero es impar";
    }

    function parImparTernario(uint n) public pure returns(string memory){

        // en este caso usamos un condicional ternario donde escribimos
        // la condicion en una linea donde despues del "?" ponemos el resultado
        // en caso de que sea verdadera la condicion y despues del ":" en caso de que no

        return n % 2 == 0 ? "el numero es par" : "el numero es impar";
    }
}