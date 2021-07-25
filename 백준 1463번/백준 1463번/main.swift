//
//  main.swift
//  백준 1463번
//
//  Created by soyounglee on 2021/07/25.
//

import Foundation

var n = Int(readLine()!)!

var array = [Int].init(repeating: 0, count: n + 1)

if n > 1 {
    for i in 2...n {
        if i <= 3 { array[i] = 1 }
        else {
            var min = array[i-1]
            if i % 3 == 0 {
                min = min < array[i/3] ? min : array[i/3]
            }
            if i % 2 == 0 {
                min = min < array[i/2] ? min : array[i/2]
            }
            min += 1
            array[i] = min
        }
    }
}

print(array[n])


