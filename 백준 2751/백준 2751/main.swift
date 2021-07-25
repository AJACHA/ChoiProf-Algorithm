//
//  main.swift
//  백준 2751
//
//  Created by soyounglee on 2021/07/18.
//

import Foundation


//MARK: - 1차 풀이 (swift 메소드 이용)
//let testCase = Int(readLine()!)!
//var results = [Int]()
//
//for _ in 0..<testCase {
//let n = Int(readLine()!)
//    results.append(n!)
//}
//results.sort()
//
//for num in results {
//    print(num)
//}
//
//

//MARK: - 2차 풀이 (insertion sort) -> 시간초과 ...? ㅠ_ㅠ
//let testCase = Int(readLine()!)!
//
//var results = [Int]()
//for _ in 0..<testCase {
//    let n = Int(readLine()!)
//    results.append(n!)
//}
//
//
//for num in insertionSort(results) {
//    print(num)
//}
//
//func insertionSort(_ array:[Int]) -> [Int] {
//    var sortedArray = array
//    for index in 1..<sortedArray.count {
//        var currentIndex = index
//        while currentIndex > 0 && sortedArray[currentIndex] < sortedArray[currentIndex - 1] {
//            sortedArray.swapAt(currentIndex - 1, currentIndex)
//            currentIndex -= 1
//        }
//    }
//    return sortedArray
//}

//MARK: 3차 풀이 (merge sort) -> 성공 !!! 
let testCase = Int(readLine()!)!

var results = [Int]()
for _ in 0..<testCase {
    let n = Int(readLine()!)
    results.append(n!)
}

mergeSort(results).forEach { a in
    print(a)
}


func mergeSort(_ array: [Int]) -> [Int] {
    if array.count <= 1 {
        return array
    }
    
    var leftArray = [Int]()
    var rightArray = [Int]()
    
    let middleNum = array.count/2
    leftArray += array[0..<middleNum]
    rightArray += array[middleNum..<array.count]
    
    let left = mergeSort(leftArray)
    let right = mergeSort(rightArray)
    
    return merge(left, right)
}

func merge(_ left: [Int], _ right: [Int]) -> [Int] {
    var result = [Int]()
    var indexL = 0
    var indexR = 0
    while indexL < left.count && indexR < right.count {
        if (left[indexL] < right[indexR]) {
            result.append(left[indexL])
            indexL += 1
        } else {
            result.append(right[indexR])
            indexR += 1
        }
    }
    
    if indexL >= indexR {
        result += right[indexR...]
    } else {
        result += left[indexL...]
    }
    
    return result
}
