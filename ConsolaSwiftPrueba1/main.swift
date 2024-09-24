//
//  main.swift
//  ConsolaSwiftPrueba1
//
//  Created by user257493 on 9/24/24.
//

import Foundation

//VAR se usa para declarar variables que puedan variar a lo largo del codigo
//Por el contrario LET es para variables que NO pueden variar osea que son variables estaticas
var num = 1
let  picha = 10

// error porque no es debilmente tipado:
// num = "hola" ----- ERROR NO PUEDO ASIGNAR UN TIPO String  A UN int
print("Introduce tu nombre")
var nombre = readLine()!
//print ("Tu nombre es:", nombre)
var nombreIncorrecto = false
repeat{
    if nombre.count >= 10{
        print("ERROR 1- Nombre demasiado largo")
        nombreIncorrecto = true
        nombre = readLine()!
    }
    else if nombre.first!.isNumber{
        print("ERROR 2- No se puede empezar con un número")
        nombreIncorrecto = true
    }
    //else if nombre.contains(){
        
    //}
    else{
        print("Longitud correcta")
        nombreIncorrecto = false
    }
} while nombreIncorrecto


