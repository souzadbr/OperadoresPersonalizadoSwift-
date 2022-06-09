//
//  main.swift
//  OperadoresPersonalizados
//
//  Created by Debora.souza on 09/06/22.
//

import Foundation

//Operadores Personalizados

 // ++ incrementa o valor inicial em 1, mas ele nao existe mais em swift, no lugar se usa o += 1

//operadores unarios = operam em apenas um operando
//tipo prefix
//tipo postfix
//Binarios =  operam em dois operandos
//tipo infix


//PREFIX -  opera do lado esquerdo do operando
prefix operator <|

prefix func <| (rhs: [Int]) -> [Int] {
    let result = rhs.map({$0 - 1})
    
    return result
}
let ages = [9, 35, 30, 42, 7, 18]

let lastYearAge = <|ages

print(lastYearAge)


//POSTFIX - opera do lado direito do operando

postfix operator <<

postfix func << (lhs:Int) -> Int {
    var result = 1
    if lhs < 2 {
        return result
    }
    for i in 2...lhs {
        result *= i
    }
    return result
}

3<< //6
4<< // 24
5<< // 120
print(3<<)
print(4<<)
print(5<<)

//INFIX

infix operator ---
func --- (lhs: Int, rhs: Int) -> [Int] {
    return Array(rhs...lhs).reversed()
}

print (30---12)


import Foundation
infix operator >-<
    func >-< (total: Int, universe: Int) -> [Int] {
        var result: [Int] = []
        while result.count < total {
            let rambdomNumber = Int( arc4random_uniform(UInt32(universe)) + 1)
            if result.contains(rambdomNumber){
                result.append(rambdomNumber)
            }
        }
        return result.sorted()
    }

print(6>-<60)
print(5>-<80)
