//
//  main.swift
//  백준 4796번
//
//  Created by soyounglee on 2021/08/07.
//

import Foundation

var count = 1
while true {
    let temp = readLine()!.split(separator: " ").map { Int($0)! }
    if temp[0] != 0 {
        let l = temp[0]
        let p = temp[1]
        let v = temp[2]
        
        let quotient = v/p
        let remainder = v%p

        var result = quotient * l
        remainder < l ? (result += remainder) : (result += l)
        
        
        print("Case \(count): \(result)")
        
        count += 1
        
    } else { break }
}




