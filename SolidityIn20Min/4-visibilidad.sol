// SPDX-License-Identifier: Unlicense

pragma solidity ^0.8.20;

contract visibilidadVariables {

    string nombre = "nombre 1"; //sin visibilidad

    //variable publica, puede accederse a ella dentro o fuera del contrato o con herencia
    string public nombre2 =  "nombre 2"; 

    //variable privada, solo accesible dentro de este contrato
    string private nombre3 =  "nombre 3"; 

    //variable interna, solo accesible dentro de este contrato y no permite heredarla
    string internal nombre4 =  "nombre 4";

}

contract visibilidadFunciones {

    //la funciones internas solo se pueden llamar desde el mismo contrato o en contratos herederos

    function funcion1() internal {

    }

    //la funciones externas solo pueden ser llamadas por contratos desde afuera, no desde el mismo contrato
    //ni desde funciones internas

    function funcion2() external {

    }

    //la funciones privadas no pueden ser llamadas desde otros contratos ni desde contratos herederos

    function funcion3() private {

    }

    //la funciones publicas pueden ser llamadas desde cualquier parte, afuera, dentro o en funciones internas

    function funcion4() public {

    }
}