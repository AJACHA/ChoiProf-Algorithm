//
//  main.swift
//  백준 11726번
//
//  Created by soyounglee on 2021/07/31.
//

import Foundation

let n = Int(readLine()!)!
var dp = [Int].init(repeating: 0, count: n+1)

for i in 1...n {
    switch i {
    case 1:
        dp[i] = 1
    case 2:
        dp[i] = 2
    default:
        dp[i] = (dp[i-1] + dp[i-2]) % 10007
    }
}

print(dp[n])


//dp.append([0]) // 의미없음
//dp.append([0,1]) // dp[1]
//dp.append([0,1,1]) // dp[2]
//
//if n > 2 {
//    for i in 3...n {
//        var tempArr = [0, 1]
//        for k in 2...((i/2) + 1) {
//            if k == ((i/2) + 1) {
//                if i % 2 == 0 {
//                    tempArr.append(1)
//                } else {
//                    tempArr.append(1 + dp[i-2][k-1] % 10007)
//                }
//            } else { tempArr.append(dp[i-1][k] % 10007 + dp[i-2][k-1] % 10007)}
//
//        }
//        dp.append(tempArr)
//    }
//}
//
//print(dp[n].reduce(0){ $0 + $1 })
//
