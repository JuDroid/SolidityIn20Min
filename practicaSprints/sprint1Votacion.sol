// SPDX-License-Identifier: MIT
pragma solidity >0.6.0 <=0.8.20;

//crearemos un contrato que simule un sistema de votacion simple

contract Votaciones {

    // definimos primero los datos requeridos, en este caso un struct que represente cada 
    // candidato y luego un arreglo que contenga a los condidatos a votar

    struct Candidato {
        uint cantidadVotos;
        string nombreCandidato;
    }

    Candidato[] candidatos;
    mapping (address => uint) public registroVotaciones;

    modifier candidatoRepetido(string memory _nombreCandidato) {

        for (uint i = 0; i < candidatos.length; i++) 
        {
            require (keccak256(bytes(_nombreCandidato)) != keccak256(bytes(candidatos[i].nombreCandidato)),"El candidato ya existe");
        }
        _;
    }

    function agregarCandidato(string memory _nombreCandidato) public candidatoRepetido(_nombreCandidato) {

        candidatos.push(Candidato(0, _nombreCandidato));
    }

    // mostramos el arreglo de candidatos

    function mostrarCandidatos() public view returns (Candidato[] memory){

        return candidatos;
    }

    //para funcion votar, necesitamos obtener 

    function votar(string memory _nombreCandidato) public {

        //verificando si el votante ya habia votado 

        require(registroVotaciones[msg.sender] == 0, "El votante ya ha votado");

        //despues de verificar obtendremos el indice del candidato por el que estan votando

        bool candidatoExiste = false;
        uint indiceCandidato = 0;

        for (uint i = 0; i < candidatos.length; i++) 
        {
            if (keccak256(bytes(_nombreCandidato)) == keccak256(bytes(candidatos[i].nombreCandidato))) {
                
                candidatoExiste = true;
                indiceCandidato = i;
                break;
            }
        }

        //ahora verificamos que existe 

        require(candidatoExiste == true, "el candidato no existe");

        // incrementamos la cantidad de votos del candidato

        candidatos[indiceCandidato].cantidadVotos++;

        // incrementamos la cuenta general de votos para cada candidato

        registroVotaciones[msg.sender] = indiceCandidato + 1;
    }
}