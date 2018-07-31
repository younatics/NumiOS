//
//  NumiOS.swift
//  NumiOS
//
//  Created by Seungyoun Yi on 2018. 7. 31..
//  Copyright © 2018년 Seungyoun Yi. All rights reserved.
//

import Foundation

public class NumiOS: NSObject {
    @objc public static let shared = NumiOS()
    
    var defaultValue = 0
    var encodingValue = 1
    
    public func oneHotEncoding(array:[Int], maxLength: Int) -> [[Int]] {
        var returnArray = Array(repeating: Array(repeating: defaultValue, count: maxLength), count: array.count)
        
        for (index, value) in array.enumerated() {
            if value > maxLength {
                fatalError("One hot encoding value should not be bigger than max length")
            }
            returnArray[index][value] = encodingValue
        }
        return returnArray
    }
    
    public func concatenate(_ arrays: [[Double]]...) -> [[Double]] {
        var returnArray = [[Double]]()
        
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
    
    public func transpose(_ array:[[Double]]) -> [[Double]] {
        let transposedArray = array[0].indices.map { col in
            array.indices.map { row in
                array[row][col]
            }
        }
        return transposedArray
    }
    
    public func reshape(_ array:[[Double]], shape: [Int]) -> [[Double]] {
        var count = 0
        if shape.count != 2 {
            fatalError("Shape only support second dimention")
        }
        var returnArray = Array(repeating: Array(repeating: 0.0, count: shape[1]), count: shape[0])
        
        for oneArray in array {
            for value in oneArray {
                returnArray[count / shape[1]][count % shape[1]] = value
                count += 1
            }
        }
        
        return returnArray
    }
    
    public func shape(_ array: [[Double]]) -> (row: Int, column: Int) {
        let column = array.count
        guard let row = array.first?.count else {
            fatalError("Should not be nil")
        }
        return (row, column)
    }

}
