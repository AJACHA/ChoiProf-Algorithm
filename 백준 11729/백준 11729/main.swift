//
//  main.swift
//  백준 11729
//
//  Created by soyounglee on 2021/07/18.
//

import Foundation

var number = Int(readLine()!)
print(pow(2, number!) - 1)

hanoi(number!, 1, 2, 3)

func hanoi(_ num: Int, _ from: Int, _ by: Int, _ to: Int) {
    if num == 1 {
        print ("\(from) \(to)")
    }
    else {
        hanoi(num - 1, from, to, by)
        print("\(from) \(to)")
        hanoi(num - 1, by, from, to)
    }
}
