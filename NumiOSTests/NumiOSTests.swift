//
//  NumiOSTests.swift
//  NumiOSTests
//
//  Created by 윤중현 on 30/09/2018.
//  Copyright © 2018 Seungyoun Yi. All rights reserved.
//

import XCTest
import NumiOS

class NumiOSTests: XCTestCase {
    func testOneHotEncoding() {
        var testCase: [Int] = [0,1,2,3,4]
        var result: [[Int]] = NumiOS.oneHotEncoding(testCase)
        XCTAssertEqual(result, [
            [1,0,0,0,0],
            [0,1,0,0,0],
            [0,0,1,0,0],
            [0,0,0,1,0],
            [0,0,0,0,1],
        ])
        
        testCase = [0,0,0,0,1,1,2,3,0,6,4]
        result = NumiOS.oneHotEncoding(testCase)
        XCTAssertEqual(result, [
            [1,0,0,0,0,0,0],
            [1,0,0,0,0,0,0],
            [1,0,0,0,0,0,0],
            [1,0,0,0,0,0,0],
            [0,1,0,0,0,0,0],
            [0,1,0,0,0,0,0],
            [0,0,1,0,0,0,0],
            [0,0,0,1,0,0,0],
            [1,0,0,0,0,0,0],
            [0,0,0,0,0,0,1],
            [0,0,0,0,1,0,0]
        ])
    }
    
    func testShape() {
        var testCase: [AnyObject] = [1,2,3,4].map({ $0 as AnyObject })
        var result = NumiOS.shape(testCase)
        XCTAssertEqual(result, [4])
        
        testCase = [
            [1,2,3,4,5,6],
            [1,2,3,4,5,6],
            [1,2,3],
        ].map({ $0 as AnyObject })
        result = NumiOS.shape(testCase)
        XCTAssertEqual(result, [3,6])
    }
    
    func testConcatenate() {
        var array0: [[Int]] = [[0,1,2,3]]
        var array1: [[Int]] = [[0,1,2,3]]
        var result = NumiOS.concatenate(array0, array1)
        XCTAssertEqual(result, [
            [0,1,2,3,0,1,2,3]
        ])
        
        array0 = [[0,1,2]]
        array1 = [[4,5,6,7]]
        let array2 = [[10,11,12,13]]
        result = NumiOS.concatenate(array0, array1, array2)
        XCTAssertEqual(result, [
            [0,1,2,4,5,6,7,10,11,12,13]
        ])
    }
    
    func testTranspose() {
        let testCase: [[Int]] = [[0,1,2,3]]
        let result: [[Int]] = NumiOS.transpose(testCase)
        XCTAssertEqual(result, [
            [0],
            [1],
            [2],
            [3],
        ])
    }
    
    func testReshape() {
        var array: [[Int]] = [
            [0,1,2,3,4,5,6,7,8,9,10,11]
        ]
        var shape: [Int] = [3,4]
        var result = NumiOS.reshape(array, shape: shape)
        XCTAssertEqual(result, [
            [0,1,2,3],
            [4,5,6,7],
            [8,9,10,11],
        ])
        
        array = [
            [0,1,2,3,4,5]
        ]
        shape = [3,4]
        result = NumiOS.reshape(array, shape: shape)
        XCTAssertEqual(result, [
            [0,1,2,3],
            [4,5,0,0],
            [0,0,0,0],
        ])
    }
}
