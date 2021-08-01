//
//  main.swift
//  백준 11722
//
//  Created by soyounglee on 2021/07/31.
//

import Foundation

let n = Int(readLine()!)!
var array = [0] + readLine()!.split(separator: " ").map{Int($0)!}
var dp = [Int].init(repeating: 1, count: n + 1)

for i in 1...n {
    for k in 0..<i {
        if array[k] > array[i] {
            dp[i] = max(dp[i], dp[k] + 1)
        }
    }
    
}
print(dp.max()!)
