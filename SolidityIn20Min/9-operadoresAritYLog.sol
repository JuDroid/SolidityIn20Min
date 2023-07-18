// SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.20;

contract operadoresAritmetricos {

    function suma(uint a, uint b) public pure returns(uint){

        return a + b;
    }

    function resta(uint a, uint b) public pure returns(uint){

        return a - b;
    }

    function multiplicacion(uint a, uint b) public pure returns(uint){

        return a * b;
    }

    function division(uint a, uint b) public pure returns(uint){

        return a / b;
    }

    function potencia(uint a, uint b) public pure returns(uint){

        return a ** b;
    }

    function modulo(uint a, uint b) public pure returns(uint){

        return a % b;
    }

    function incrementar(uint a) public pure returns(uint){

        return a++;
    }

    function decrementar(int a) public pure returns(int){

        return --a;
    }
}

contract operadoresLogicos {

    function igualdad(uint a, uint b) public pure returns(bool){

        return a == b; //si "a" ES igual a "b"
    }

    function Diferencia(uint a, uint b) public pure returns(bool){

        return a != b; //si "a" NO ES igual a "b"
    }

    function mayor(uint a, uint b) public pure returns(bool){

        return a > b; //si "a" ES mayor a "b"
    }

    function menor(uint a, uint b) public pure returns(bool){

        return a < b; //si "a" ES igual a "b"
    }

    function mayorIgual(uint a, uint b) public pure returns(bool){

        return a >= b; //si "a" ES mayor o igual a "b"
    }

    function menorIgual(uint a, uint b) public pure returns(bool){

        return a <= b; //si "a" ES menor o igual a "b"
    }

    function operadorY(uint a, uint b) public pure returns(bool){

        return (a != 0) && (b != 0); ///si "a" y "b" son iguales a cero
    }

    function operadorO(uint a, uint b) public pure returns(bool){

        return (a == 0) || (b == 0); //si "a" o "b" son iguales a cero
    }

    function operadorNo(uint a) public pure returns(bool){

        return !(a == 0); //si "a" NO ES igual a cero 
    }
}