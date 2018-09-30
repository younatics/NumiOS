//
//  NumiOS.swift
//  NumiOS
//
//  Created by Seungyoun Yi on 2018. 7. 31..
//  Copyright © 2018년 Seungyoun Yi. All rights reserved.
//

import Foundation

public class NumiOS: NSObject {
    /// see more details in https://docs.scipy.org/doc/numpy/reference/generated/numpy.ndarray.shape.html
    public class func shape(_ array:Array<Any>) -> [Int] {
        var array = array
        var shape = [array.count]
        
        while let element = array.first as? Array<Any> {
            shape.append(element.count)
            array = element
        }
        return shape
    }

    /// see more details in https://docs.scipy.org/doc/numpy/reference/generated/numpy.zeros.html
    public class func zeros(_ array:Array<Any>) -> Array<Any> {
        let dimension = array.shape().count
        if dimension > 2 {
            fatalError("zeros supports up to two dimensions")
        }
        
        var returnArray = Array<Any>()
        if dimension == 1 {
            returnArray = Array(repeating: 0, count: array.count)
        } else if dimension == 2 {
            guard let first = array.first else {
                fatalError("first object should be exist")
            }
            returnArray = Array(repeating: Array(repeating: 0, count: array.count), count: (first as AnyObject).count)
        }
        
        return returnArray
    }

    public class func oneHotEncoding<T: Numeric & Comparable>(_ array:[T], max: Int = 0 , defaultValue: Int = 0, encodingValue: Int = 1) -> [[Int]] {
        var max = max
        guard let calculatedMax = array.max() as? Int else { fatalError("Max value should be exist")}
        
        if calculatedMax + 1 > max {
            max = calculatedMax + 1
        }
        
        var returnArray = Array(repeating: Array(repeating: defaultValue, count: max), count: array.count)

        for (index, value) in array.enumerated() {
            if let value = value as? Int, value <= max {
                returnArray[index][value] = encodingValue
            } else {
                fatalError("One hot encoding value should not be bigger than max length")
            }
        }
        return returnArray
    }
    
    public class func concatenate<T: Numeric>(_ arrays: [[T]]...) -> [[T]] {
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
    
    public class func transpose<T: Numeric>(_ array:[[T]]) -> [[T]] {
        let transposedArray = array[0].indices.map { col in
            array.indices.map { row in
                array[row][col]
            }
        }
        return transposedArray
    }
    
    public class func reshape<T: Numeric>(_ array:[[T]], shape: [Int]) -> [[T]] {
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
}
