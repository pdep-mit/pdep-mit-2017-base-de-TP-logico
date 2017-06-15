% COMO TESTEAR LA SOLUCION:
% 
% Modificar sólo el cuerpo / antecedente de las reglas que se encuentran más abajo para hacer las mismas consultas que harían por consola.
% Los false y true son temporales para hacer que los tests no tengan errores sintácticos, pero que fallen en ejecución.
% En el caso de que se quieran verificar consultas existenciales, respetar el nombre de la variable de acuerdo al encabezado / consecuente de la regla en cuestión.
% Para correr los tests, cargar este archivo en SWI Prolog y escribir en la consola run_tests.

% Tengan en cuenta que, hasta no implementar lo que piden los tests que esperan validar consultas existenciales,
% al cargar este archivo van a aparecer warnings del estilo Singleton variables: [Variable]
% que van a desaparecer cuando realicen la consulta dentro de esa definición donde se use Variable.
% Si este mismo warning les aparece dentro de programadores.pl, no lo ignoren!
% Podrían estarle pifiando a algo y no estar relacionando adecuadamente lo que deberían.

% Todavía con dudas? Mirá este apunte: https://docs.google.com/document/d/1vxDrdDeVmPeOoKWJvYbcEKFDgE14mnFDhUf0YPGGaM4/edit#

% Esta linea importa el archivo programadores.pl, si lo renombran no va a funcionar el import!
:- consult(programadores).

:- begin_tests(programadores).

% ************************************************************
% Test Parte 1
% ************************************************************

% Punto 1

% set(Variable == [..]) significa que la consulta que hagan dentro del test
% deberia dar como posibles resultados para la variable con ese nombre cada uno de esos valores independientemente,
% sin importar el orden o si los mismos se repiten al hacer la consulta en la consola.

test(lenguajesQueSabeFernando, set(Lenguaje == [cobol, visualBasic, java])) :-
    false.
	
test(quienesProgramanEnJava, set(Persona == [fernando, julieta, marcos, santiago])) :-
    false.
	
% Por el fail, para que este test de verde, la consulta para saber si existen programadores assembler debería fallar.

test(existenProgramadoresAssembler, fail):-
    true.
	
% Al no indicar más nada, quiere decir que la consulta para saber si fernando es programador derería ser cierta.

test(fernandoEsProgramador) :-
    false.
	
test(rolesDeFernando, set(Rol == [analistaFuncional, programador])) :-
    false.

test(quienesSonProgramadores, set(Programador == [fernando, julieta, marcos, santiago])) :-
    false.

test(existeAlgunProjectLeader) :-
    false.

	
% ************************************************************
% Test Parte 2
% ************************************************************

% Punto 2 Proyectos

test(lenguajesDeSumatra, set(Lenguaje == [net, java])) :-
	false.

test(lenguajesDePrometeusEsSoloCobol, set(Lenguaje == [cobol])) :-
	false.

test(fernandoTrabajaEnPrometeus) :-
    false.

test(santiagoTrabajaEnPrometeus) :-
    false.

test(programadoresDeSumatra, set(Persona == [julieta, marcos, andres])) :-
    false.

test(trabajadoresDeSumatraBienAsignados, set(Persona == [julieta, marcos, andres])) :-
    false.

test(trabajadoresDePrometeusBienAsignados, set(Persona == [fernando])) :-
    false.

test(trabajadoresBienAsignados, set(Persona == [julieta, marcos, andres, fernando])) :-
    false.

test(proyectosConGenteBienAsignada, set(Proyecto == [prometeus, sumatra])) :-
    false.

% Punto 3 - Proyectos bien definidos

test(proyectosBienDefinidos, set(Proyecto == [sumatra])) :-
    false.

test(prometeusEstaBienDefinido, fail) :-
    true.

test(proyectosMalDefinidos, set(Proyecto == [prometeus])) :-
    false.

% Descomentar y completar lo que sigue para la siguiente entrega
/**

% ************************************************************
% Test Parte 3
% ************************************************************

% Punto 4 - Te copas?

test(fernandoEsCopadoConSantiago) :-
	false.

test(fernandoEsCopadoConJulieta, fail) :-
	true.
		
test(aQuienesLesEnseniaFernandoCobol, set(Persona == [santiago, julieta, marcos, andres])) :-
	false.

test(fernandoPuedeEnseniarHaskellAAlguien, fail) :-
	true.

test(quienesLeEnsenianJavaAAndres, set(Persona == [santiago, julieta, fernando])) :-
	false.

test(queLenguajesEnseniaFernandoAAlguien, set(Lenguajes == [cobol, visualBasic, java])) :-
	false.

test(marcosPuedeEnseniarAlgo, fail) :-
	true.

% Punto 5 - Seniority
% Recuerden que debería ser totalmente inversible

test(fernandoTiene24DeSeniority) :-
	false.

test(genteCon0Seniority, set(Persona == [santiago, andres])) :-
	false.

test(julietaTieneSeniority6, fail) :-
	true.

test(cualEsElSeniorityDeJulieta, set(Seniority == [7])) :-
	false.

*/
	
:- end_tests(programadores).
