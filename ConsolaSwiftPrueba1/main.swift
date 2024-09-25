//
//  main.swift
//  ConsolaSwiftPrueba1
//
//  Created by Eljoselu on 9/24/24.
//
import Foundation

//VAR se usa para declarar variables que puedan variar a lo largo del codigo
//Por el contrario LET es para variables que NO pueden variar osea que son variables estaticas
var num = 1
let  picha = 10

// error porque no es debilmente tipado:
// num = "hola" ----- ERROR NO PUEDO ASIGNAR UN TIPO String  A UN int
func tieneCaracteresEspeciales(texto: String) -> Bool {
    let especiales = "¡!$%/()=¡¿?[]{}@"
    for letra in texto {
        for especial in especiales{
            if letra == especial{
                return true
            }
        }
    }
    return false
}


print("Introduce tu nombre")
var nombre = readLine()!
//print ("Tu nombre es:", nombre)
var nombreIncorrecto = false
repeat{
    if nombre.count >= 10{
        print("ERROR 1- Nombre demasiado largo, vuelve a introducirlo")
        nombreIncorrecto = true
        nombre = readLine()!
    }
    else if nombre.first!.isNumber{
        print("ERROR 2- No se puede empezar con un número, vuelve a introducirlo")
        nombreIncorrecto = true
        nombre = readLine()!
    }
    else if tieneCaracteresEspeciales(texto: nombre){
        nombreIncorrecto = true
        print("ERROR 3- El texto posee algún simbolo, vuelve a introducirlo")
        nombre = readLine()!
        
    }
    else{
        print("Longitud correcta")
        nombreIncorrecto = false
    }
} while nombreIncorrecto


