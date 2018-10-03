//
//  NumiOS.swift
//  NumiOS
//
//  Created by Seungyoun Yi on 2018. 7. 31..
//  Copyright © 2018년 Seungyoun Yi. All rights reserved.
//

import Foundation

public class NumiOS: NSObject {
    /// see more details in https://docs.scipy.org/doc/numpy/reference/generated/numpy.ndarray.size.html
    public class func size(_ array: Array<Any>) -> Int {
        guard validateMatrix(array: array) else {
            fatalError("Only support full dimensional matrix")
        }
        var result: Int = 0
        array.forEach { element in
            if let e_array = element as? Array<Any> {
                result += size(e_array)
            } else {
                result += 1
            }
        }
        return result
    }
    
    /// see more details in https://docs.scipy.org/doc/numpy/reference/generated/numpy.ndarray.shape.html
    public class func shape(_ array:Array<Any>) -> [Int] {
        if !validateMatrix(array: array) {
            fatalError("Only support full dimensional matrix")
        }
        
        var (array, shape) = (array, [array.count])
        
        while let element = array.first as? Array<Any> {
            shape.append(element.count)
            array = element
        }
        return shape
    }
    
    /// see more details in https://docs.scipy.org/doc/numpy-1.15.0/reference/generated/numpy.full.html
    public class func full(_ array: [Int], fillValue: Any) -> Array<Any> {
        let result = multidimentional(shape: array, array: Array<Any>(), repeating: fillValue)
        return result.array
    }

    /// see more details in https://docs.scipy.org/doc/numpy/reference/generated/numpy.zeros.html
    public class func zeros(_ array: [Int]) -> Array<Any> {
        return zeros(array, type: Int.self)
    }
    
    /// see more details in https://docs.scipy.org/doc/numpy/reference/generated/numpy.zeros.html
    public class func zeros<T: Numeric>(_ array: [Int], type: T.Type) -> Array<Any> {
        return zerosNumeric(array, type: type)
    }
    
    /// see more details in https://docs.scipy.org/doc/numpy/reference/generated/numpy.zeros.html
    /// T의 타입에 맞는 0을 넣어주기 위함 (casting 할 필요가 없어져서 이 함수 만듬)
    private class func zerosNumeric<T: Numeric>(_ array: [Int], type: T.Type, zero: T = 0) -> Array<Any> {
        return full(array, fillValue: zero)
    }
    
    /// see more details in https://docs.scipy.org/doc/numpy/reference/generated/numpy.ones.html
    public class func ones(_ array: [Int]) -> Array<Any> {
        return ones(array, type: Int.self)
    }
    
    /// see more details in https://docs.scipy.org/doc/numpy/reference/generated/numpy.ones.html
    public class func ones<T: Numeric>(_ array: [Int], type: T.Type) -> Array<Any> {
        return onesNumeric(array, type: type)
    }
    
    /// see more details in https://docs.scipy.org/doc/numpy/reference/generated/numpy.ones.html
    /// T의 타입에 맞는 1을 넣어주기 위함 (casting 할 필요가 없어져서 이 함수 만듬)
    private class func onesNumeric<T: Numeric>(_ array: [Int], type: T.Type, one: T = 1) -> Array<Any> {
        return full(array, fillValue: one)
    }
    
    public class func oneHotEncoding(_ array:[Int], classes: Int = 0) -> [[Int]] {
        var classes = classes
        guard let calculatedMax = array.max() else { fatalError("Max value should be exist")}
        
        if calculatedMax + 1 > classes {
            classes = calculatedMax + 1
        }
        
        var returnArray = Array(repeating: Array(repeating: 0, count: classes), count: array.count)

        for (index, value) in array.enumerated() {
            if value <= classes {
                returnArray[index][value] = 1
            } else {
                fatalError("One hot encoding value should not be bigger than max length")
            }
        }
        return returnArray
    }
    
    /// see more details in https://docs.scipy.org/doc/numpy/reference/generated/numpy.eye.html
    public class func eye<T: Numeric>(rows: Int, columns: Int? = nil, diagonal: Int = 0, value: T = 1, default: T = 0) -> [[T]] {
        let columns = columns ?? rows
        return (0..<rows).map({ row in (0..<columns).map({ col in (row + diagonal) == col ? value : `default` }) })
    }
    
    // see more details in https://docs.scipy.org/doc/numpy-1.15.0/reference/generated/numpy.unique.html
    public class func unique<T: Equatable>(_ array: Array<T>) -> Array<T> {
        var result: Array<T> = []
        array.forEach({ result.contains($0) ? () : result.append($0) })
        return result
    }
    
    // see more details in https://docs.scipy.org/doc/numpy-1.15.0/reference/generated/numpy.unique.html
    public class func unique<T: Equatable>(_ array: Array<Any>, type: T.Type) -> Array<Any> {
        var result: Array<T> = []
        array.forEach({
            guard let element = $0 as? T else {
                fatalError("Arrays Element must have same type with \(String(describing: T.self)) (Arrays type is \(String(describing: T.self))")
            }
            result.contains(element) ? () : result.append(element)
        })
        return result
    }
    
    /// see more details in https://docs.scipy.org/doc/numpy/reference/generated/numpy.concatenate.html
    public class func concatenate(_ arrays: Array<Any> ...) -> Array<Any> {
        guard arrays.count > 1 else { return arrays.first ?? [] }
        let level: Int = dimensionsLevel(arrays[0])
        for array in arrays[1...] {
            guard level == dimensionsLevel(array) else {
                fatalError("All the input arrays must have same number of dimensions")
            }
        }
        return arrays.reduce(Array<Any>()) { (result, element) -> Array<Any> in
            var result = result
            element.forEach({ result.append($0) })
            return result
        }
    }
    
    public class func dimensionsLevel<T: Numeric>(_ array: [Any]) -> T {
        return _dimensionsLevel(array) + 1
    }
    
    private class func _dimensionsLevel<T: Numeric>(_ array: [Any]) -> T {
        if let e_array = array.first as? Array<Any> {
            return 1 + _dimensionsLevel(e_array)
        }
        return 0
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
    
    /// see more details in https://docs.scipy.org/doc/numpy/reference/generated/numpy.mean.html
    public class func mean(_ array: Array<Any>) -> Int {
        return mean(array, initialValue: 0, castToType: castToInt)
    }
    
    /// see more details in https://docs.scipy.org/doc/numpy/reference/generated/numpy.mean.html
    public class func mean(_ array: Array<Any>) -> Float {
        return mean(array, initialValue: 0, castToType: castToFloat)
    }
    
    /// see more details in https://docs.scipy.org/doc/numpy/reference/generated/numpy.mean.html
    public class func mean(_ array: Array<Any>) -> Double {
        return mean(array, initialValue: 0, castToType: castToDouble)
    }
    
    /// see more details in https://docs.scipy.org/doc/numpy/reference/generated/numpy.mean.html
    public class func mean<T: Numeric & Dividable>(_ array: Array<Any>, initialValue: T, castToType: (Any) -> T?) -> T {
        guard validateMatrix(array: array) else {
            fatalError("Only support full dimensional matrix")
        }
        let result: (total: T, size: T) = sum(array, initialValue: initialValue, castToType: castToType)
        return result.total / result.size
    }
    
    /// see more details in https://docs.scipy.org/doc/numpy/reference/generated/numpy.sum.html
    public class func sum(_ array: Array<Any>) -> (total: Int, size: Int) {
        return sum(array, initialValue: 0, castToType: castToInt)
    }
    
    /// see more details in https://docs.scipy.org/doc/numpy/reference/generated/numpy.sum.html
    public class func sum(_ array: Array<Any>) -> (total: Float, size: Float) {
        return sum(array, initialValue: 0, castToType: castToFloat)
    }
    
    /// see more details in https://docs.scipy.org/doc/numpy/reference/generated/numpy.sum.html
    public class func sum(_ array: Array<Any>) -> (total: Double, size: Double) {
        return sum(array, initialValue: 0, castToType: castToDouble)
    }
    
    /// see more details in https://docs.scipy.org/doc/numpy/reference/generated/numpy.sum.html
    public class func sum<T: Numeric>(_ array: Array<Any>, initialValue: T, castToType: (Any) -> T?) -> (total: T, size: T) {
        return array.reduce((initialValue, initialValue)) { (result, element) -> (T, T) in
            var result = result
            if let e_array = element as? Array<Any> {
                let (total, size) = sum(e_array, initialValue: initialValue, castToType: castToType)
                result.0 += total
                result.1 += size
            } else {
                if let e_t = castToType(element) {
                    result.0 += e_t
                    result.1 += 1
                }
            }
            return result
        }
    }
}

extension NumiOS {
    public class func validateMatrix(array: Array<Any>) -> Bool {
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
                    return validateMatrix(array: element)
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
