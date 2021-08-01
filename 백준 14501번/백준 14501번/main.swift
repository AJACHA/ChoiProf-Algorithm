//
//  main.swift
//  백준 14501번
//
//  Created by soyounglee on 2021/07/27.
//

import Foundation

let n = Int(readLine()!)!

var T = [0]
var P = [0]

for _ in 0..<n {
    let a = readLine()!.split(separator: " ").map { Int($0)! }
    T.append(a[0])
    P.append(a[1])
}

var dp = [Int].init(repeating: 0, count: n+6)

for i in (1..<n+1).reversed(){
    if (n-i-T[i]+1 < 0) {
        dp[i] = dp[i+1]
    } else { dp[i] = max(dp[i+1], P[i] + dp[i+T[i]])}
}

print(dp[1])
