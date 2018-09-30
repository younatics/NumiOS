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
    func testShape() {
        var input: [Any] = [1,2,3,4]
        var output = NumiOS.shape(input)
        var answer = [4]
        XCTAssertEqual(output, answer)
        
        input = [
            [1,2,3,4,5,6],
            [1,2,3,4,5,6],
            [1,2,3]]
        output = NumiOS.shape(input)
        answer = [3,6]
        XCTAssertEqual(output, answer)
    }
    
    func testZeros() {
//        var testCase: [Any] = [1,2]
//        var result = NumiOS.zeros(testCase)
//        XCTAssertEqual(result, [
//            [0,0]
//            ] as [Any])
        
//        testCase = [
//            [1,2,3,4,5,6],
//            [1,2,3,4,5,6],
//            [1,2,3],
//        ]
//        result = NumiOS.shape(testCase)
//        XCTAssertEqual(result, [3,6])
    }


    func testOneHotEncoding() {
        var input: [Int] = [0,1,2,3,4]
        var output = NumiOS.oneHotEncoding(input)
        var answer = [
            [1,0,0,0,0],
            [0,1,0,0,0],
            [0,0,1,0,0],
            [0,0,0,1,0],
            [0,0,0,0,1]]
        XCTAssertEqual(output, answer)

        input = [0,0,0,0,1,1,2,3,0,6,4]
        output = NumiOS.oneHotEncoding(input)
        answer = [
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
            [0,0,0,0,1,0,0]]
        XCTAssertEqual(output, answer)
    }
    
    func testConcatenate() {
        var array0: [[Int]] = [[0,1,2,3]]
        var array1: [[Int]] = [[0,1,2,3]]
        var output = NumiOS.concatenate(array0, array1)
        var answer = [
            [0,1,2,3,0,1,2,3]]
        XCTAssertEqual(output, answer)
        
        array0 = [[0,1,2]]
        array1 = [[4,5,6,7]]
        let array2 = [[10,11,12,13]]
        output = NumiOS.concatenate(array0, array1, array2)
        answer = [
            [0,1,2,4,5,6,7,10,11,12,13]]
        XCTAssertEqual(output, answer)
    }
    
    func testTranspose() {
        let input: [[Int]] = [[0,1,2,3]]
        let output: [[Int]] = NumiOS.transpose(input)
        let answer = [
            [0],
            [1],
            [2],
            [3]]
        XCTAssertEqual(output, answer)
    }
    
    func testReshape() {
        var array: [[Int]] = [
            [0,1,2,3,4,5,6,7,8,9,10,11]
        ]
        var shape: [Int] = [3,4]
        var output = NumiOS.reshape(array, shape: shape)
        var answer = [
            [0,1,2,3],
            [4,5,6,7],
            [8,9,10,11]]
        XCTAssertEqual(output, answer)
        
        array = [
            [0,1,2,3,4,5]
        ]
        shape = [3,4]
        output = NumiOS.reshape(array, shape: shape)
        answer = [
            [0,1,2,3],
            [4,5,0,0],
            [0,0,0,0]]
        XCTAssertEqual(output, answer)
    }
}
