//
//  NumiOS.swift
//  NumiOS
//
//  Created by Seungyoun Yi on 2018. 7. 31..
//  Copyright © 2018년 Seungyoun Yi. All rights reserved.
//

import Foundation

extension Sequence where Element: Sequence {
    public func sum() -> Element {
        return 0 as! Self.Element
    }
}

public class NumiOS: NSObject {
    @objc public static let shared = NumiOS()
    
    var defaultValue = 0
    var encodingValue = 1
    
//    public func oneHotEncoding<T: Numeric>(array:[T], maxLength: Int) -> [[T]] {
//        var returnArray = Array(repeating: Array(repeating: defaultValue, count: maxLength), count: array.count)
//
//        for (index, value) in array.enumerated() {
//            if value > maxLength {
//                fatalError("One hot encoding value should not be bigger than max length")
//            }
//            returnArray[index][value] = encodingValue
//        }
//        return returnArray
//    }
    
    public func concatenate<T: Numeric>(_ arrays: [[T]]...) -> [[T]] {
        var returnArray = [[T]]()
        
        for array in arrays {
            if returnArray.count == 0 {
                returnArray = array
            } else if returnArray.count != array.count {
                fatalError("First dimention shape should be same")
            } else {
                for (index, value) in array.enumerated() {
                    returnArray[index] += value
                }
            }
        }
        return returnArray
    }
    
    public func transpose<T: Numeric>(_ array:[[T]]) -> [[T]] {
        let transposedArray = array[0].indices.map { col in
            array.indices.map { row in
                array[row][col]
            }
        }
        return transposedArray
    }
    
    public func reshape<T: Numeric>(_ array:[[T]], shape: [Int]) -> [[T]] {
        var count = 0
        if shape.count != 2 {
            fatalError("Shape only support second dimention")
        }
        
        var returnArray = Array(repeating: Array(repeating: T(exactly: 0), count: shape[1]), count: shape[0])
        
        for oneArray in array {
            for value in oneArray {
                returnArray[count / shape[1]][count % shape[1]] = value
                count += 1
            }
        }
        
        return Array(returnArray) as! [[T]]
    }
    
    public func shape<T: Numeric>(_ array: [[T]]) -> (row: Int, column: Int) {
        let column = array.count
        guard let row = array.first?.count else {
            fatalError("Should not be nil")
        }
        return (row, column)
    }

}
