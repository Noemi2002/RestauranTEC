% Definici�n de los art�culos
articulos(el,los,la,las,un,unos,una,unas).

% Definici�n de los pronombres
pronombres(yo,tu,usted,el,ella,nosotros,vosotros,ustedes,ellos,ellas).

% Definici�n de los verbos
verbos(comer,tomar,ir,estar,querer,ser,gustar,viajar,salir,vivir,poner,venir,saber,ver,decir,hacer,oir,conocer,tener,esperar).

% Definici�n de los adverbios
adverbios(acaso,quiza,probablemente,posiblemente,tampoco,nunca,no,jamas,cerca,aqui,lejos,ahi,entre,bastante,mucho,demasiado,mas,menos,poco,nada,muy,apenas,luego,hoy,ayer,tarde,temprano,antier,pronto,antes,si,cierto,tambien,claro,regular,bien,mal,mejor,peor,asi,siempre).

% Definici�n de las conjunciones
conjunciones(y,e,ni,pero,aunque,sino,o,u,si,como,que,mientras,luego,pues,porque).

% Definici�n de las preposiciones
preposiciones(a,ante,bajo,con,contra,de,desde,durante,en,entre,hacia,hasta,para,por,segun,durante,mediante,sobre,sin,tras,pro,con,tras).

% Definici�n de las interjecciones
interjecciones().

% Definici�n de los sustantivos
sustantivos().

% Definici�n de los nombres propios
nombre(greivin,andres,noemi).

% Definici�n de los adjetivos
adjetivos().

% Definici�n de los verbos conjugados en presente, pasado y futuro
% Estructura: conjugadopresente(verbo,[presente],[pasado],[futuro]).
conjugado(comer,[como,comes,come,comemos,comeis,comen],[comi,comiste,comio,comimos,comisteis,comieron],[comere,comeras,comera,comeremos,comereis,comeran]).

% Definici�n de la lista de restaurantes utilizados
rest(mcdonalds,laprincesamarina,papajohns,chillis,tacobell,ticoburguesas,pizzahut,woods,elbalcondelmarisco,lafondaazteca,elnovilloalegre,lacasonadelcerdo).

% Definici�n de los restaurantes con sus caracteristicas
% Estructura:
% restaurante(nombre,menu,direccion,lugar,capacidad,disposiciones).
restaurante(macdonalds,[menu,comidarapida,[hamburguesas,pollofrito,nuggets,wraps,ensaladas,papas,refresco,milkshake,cafe]],[direccion,'costado sur de plaza mayor, avenida 2'],[lugar,cartago],[capacidad,50],[disposiciones,['No se aceptan mascotas','Hay autoservicio']]).

% Definici�n de los men�s de los restaurantes
menu(macdonalds,comidarapida).
menu(laprincesamarina,mariscos).
menu(papajonhs,italiana).
menu(chillis,mexicana).
menu(tacobell,mexicana).
menu(ticobueguesas,comidarapida).
menu(pizzahut,italiana).
menu(woods,italiana).
menu(elbalcondelmarisco,mariscos).
menu(lafondaazteca,mexicana).
menu(elnovilloalegre,carnes).
menu(lacasonadelcerdo,carnes).

%plato(restaurante,platos, ...)
plato(macdonalds).

