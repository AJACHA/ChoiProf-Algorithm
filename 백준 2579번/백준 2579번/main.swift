//
//  main.swift
//  백준 2579번
//  게단오르기
//  Created by soyounglee on 2021/07/25.
//

import Foundation

// 가장 뒤에 있는 것은 꼭 밟아야함...
// dp 사용

let n = Int(readLine()!)!
var steps = [Int]()

for _ in 0..<n {
    steps.append( Int(readLine()!)! )
}

var array = [Int].init(repeating: 0, count: n)

if n == 1 {
    array[0] = steps[0]
} else if n == 2 {
    array[1] = steps[0] + steps[1]
} else if n == 3 {
    array[2] = max(steps[0] + steps[2], steps[1] + steps[2])
} else {
    array[0] = steps[0]
    array[1] = steps[0] + steps[1]
    array[2] = max(steps[0] + steps[2], steps[1] + steps[2])
    for i in 3..<n {
        array[i] = max(array[i-3] + steps[i-1] + steps[i], array[i-2] + steps[i])
    }
}
print(array[n-1])


