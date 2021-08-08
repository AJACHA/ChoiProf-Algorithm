//
//  main.swift
//  백준 6549
//
//  Created by soyounglee on 2021/07/18.
//

import Foundation


//
//var testCases = [[Int]]()
//while(true) {
//    let input = readLine()!
//    if Int(input) != 0 {
//        testCases.append(input.split(separator: " ").map { Int($0)! })
//    } else { break }
//
//}

var testCase = [Int]()
let input = readLine()!
testCase = [Int.max] + (input.split(separator: " ").map { Int($0)! })

print(testCase)
let count = pow(2, testCase.count-1) as NSDecimalNumber
var seg = [Int].init(repeating: 0, count: count.intValue + 1)

setNode(1, 1, testCase.count-1)
print(query(1,testCase.count-1))





func setNode(_ node: Int, _ start: Int, _ end: Int) -> Int {
    if start == end {
        seg[node] = testCase[start]
        return seg[node]
    }
    let mid = (start + end) / 2
    let a = setNode(node*2, start, mid)
    let b = setNode(node*2+1, mid+1, end)
    
    seg[node] = min(a,b)

    return seg[node]

}

func find(_ node: Int, _ start: Int, _ end: Int, _ left: Int, _ right: Int) -> Int {
    // index를 찾는 것 같음 ...
    if start > right || end < left {
        return 0
    }
    
    if left <= start && end <= right {
        return node
    }
    
    let mid = start + end / 2
    let a = find(node*2, start, mid, left, right)
    let b = find(node*2 + 1, mid + 1, end, left, right)
    
    if testCase[a+1] > testCase[b+1] {
        return b
    } else { return a }
}

func query(_ left: Int, _ right: Int) -> Int {
    if left > right {
        return 0
    }
    let index = find(1, 1, testCase.count-1, left, right)
    var ans = (right - left + 1) * seg[index] // 가장 낮은 높이인 것 * 가로 길이
    print(seg[index])
    ans = max(ans, query(left, index - 1))
    ans = max(ans, query(index + 1, right))
    
    return ans
}
