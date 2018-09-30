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
        if !validateDimension(array: array) {
            fatalError("Only support full dimensional matrix")
        }
        
        var (array, shape) = (array, [array.count])
        
        while let element = array.first as? Array<Any> {
            shape.append(element.count)
            array = element
        }
        return shape
    }

    /// see more details in https://docs.scipy.org/doc/numpy/reference/generated/numpy.zeros.html
    public class func zeros(_ array:[Int]) -> Array<Any> {
        let result = multidimentional(shape: array, array: Array<Any>(), repeating: 0)
        return result.array
    }
    
    /// see more details in https://docs.scipy.org/doc/numpy/reference/generated/numpy.ones.html
    public class func ones(_ array:[Int]) -> Array<Any> {
        let result = multidimentional(shape: array, array: Array<Any>(), repeating: 1)
        return result.array
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

extension NumiOS {
    public class func validateDimension(array: Array<Any>) -> Bool {
        var elementArray = Array<Any>()
        
        for (index, element) in array.enumerated() {
            guard let element = element as? Array<Any> else {
                return true
            }

            if elementArray.isEmpty {
                elementArray = element
                continue
            } else if elementArray.count == element.count {
                if index == array.endIndex - 1 {
                    return validateDimension(array: element)
                } else {
                    continue
                }
            } else {
                return false
            }
        }
        return false
    }
    
    private class func multidimentional(shape:[Int], array: Array<Any>, repeating: Any ) -> (shape:[Int], array: Array<Any>, repeating: Any) {
        var (shape, array) = (shape, array)
        
        if shape.isEmpty {
            return (shape, array, repeating)
        }
        
        if shape.first == 0 {
            fatalError("Shape should not include 0")
        }
        
        if shape.first == 1 {
            shape.removeFirst()
            return multidimentional(shape: shape, array: array, repeating: repeating)
        }
        
        if let lastShape = shape.last {
            if array.isEmpty {
                array = Array(repeating: repeating, count: lastShape)
            } else {
                array = Array(repeating: array, count: lastShape)
            }
            shape.removeLast()
            return multidimentional(shape: shape, array: array, repeating: repeating)
        } else {
            return (shape, array, repeating)
        }
    }
}
