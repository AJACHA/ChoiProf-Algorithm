//
//  main.swift
//  백준 9095번
// 1,2,3 더하기
//
//  Created by soyounglee on 2021/07/25.
//

import Foundation
let testCase = Int(readLine()!)!

var inputs = [Int]()
for _ in 0..<testCase {
    let n = Int(readLine()!)
    inputs.append(n!)
}

var array = [1,2,4]

for i in 3..<11 {
    array.append(array[i-1] + array[i-2] + array[i-3])
}

inputs.forEach {
    print(array[$0-1])
}


