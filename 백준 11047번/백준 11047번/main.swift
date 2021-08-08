//
//  main.swift
//  백준 11047번
//
//  Created by soyounglee on 2021/08/05.
//

import Foundation

let read = readLine()!.split(separator: " ").map{Int($0)!}
let count = read[0]
var amount = read[1]

var result = 0

var array = [Int]()
for i in 0..<count {
    array.append(Int(readLine()!)!)
}

for money in array.reversed() {
    let much = amount / money
    
    if amount == 0 { break }
    if much > 0 {
        result += much
        amount -= money * much
    }
}

print(result)
