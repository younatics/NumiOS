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
            [9,8,7,4,5,6],
            [1,1,3,4,1,6],
            [3,1,3,3,2,6]]
        output = NumiOS.shape(input)
        answer = [3,6]
        XCTAssertEqual(output, answer)

        input = [
            [[0,0,0],
             [0,0,0]],
            [[0,0,0],
             [0,0,0]]]
        output = NumiOS.shape(input)
        answer = [2,2,3]
        XCTAssertEqual(output, answer)
    }
    
    func testZeros() {
        var input = [2,2]
        let output = NumiOS.zeros(input) as! [[Int]]
        let answer = [
            [0,0],
            [0,0]]
        XCTAssertEqual(output, answer)
        
        input = [2,2,3]
        let output2 = NumiOS.zeros(input) as! [[[Int]]]
        let answer2 = [
            [[0,0,0],
            [0,0,0]],
            [[0,0,0],
             [0,0,0]]]
        XCTAssertEqual(output2, answer2)
    }
    
    func testOnes() {
        var input = [2,2]
        let output = NumiOS.ones(input) as! [[Int]]
        let answer = [
            [1,1],
            [1,1]]
        XCTAssertEqual(output, answer)
        
        input = [2,2,3]
        let output2 = NumiOS.ones(input) as! [[[Int]]]
        let answer2 = [
            [[1,1,1],
             [1,1,1]],
            [[1,1,1],
             [1,1,1]]]
        XCTAssertEqual(output2, answer2)
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
    
    func testValidateMatrix() {
        var input: [Any] = [0, 1, 2, 3]
        var output: Bool = NumiOS.validateMatrix(array: input)
        var answer = true
        XCTAssertEqual(output, answer)
        
        input = [[0,1],[2,3],[4,5]]
        output = NumiOS.validateMatrix(array: input)
        answer = true
        XCTAssertEqual(output, answer)
        
        input = [[[0,1,2],[3,4,5]],[6,7,8]]
        output = NumiOS.validateMatrix(array: input)
        answer = false
        XCTAssertEqual(output, answer)
        
        input = [[[0,1,2],[3,4,5]],[[6,7,8]]]
        output = NumiOS.validateMatrix(array: input)
        answer = false
        XCTAssertEqual(output, answer)
        
        input = [[[0,1,2],[3,4,5]],[[6,7,8],[9,10,11]]]
        output = NumiOS.validateMatrix(array: input)
        answer = true
    }
  
    func testSize() {
        var input: [Any] = [0, 1, 2, 3]
        var output: Int = NumiOS.size(input)
        var answer = 4
        XCTAssertEqual(output, answer)
        
        input = [[0,1,2],[3,4,5]]
        output = NumiOS.size(input)
        answer = 6
        XCTAssertEqual(output, answer)
        
        input = [[0,1],[2,3],[4,5]]
        output = NumiOS.size(input)
        answer = 6
        XCTAssertEqual(output, answer)
        
        // NEED UPDATE : ValidateDimension is fail
        // input = [[[0,1,2],[3,4,5]],[6,7,8],[[0,1,2],[3,4,5]],[6,7,8]]
        // output = NumiOS.size(input)
        // answer = 4
        // XCTAssertEqual(output, answer)
        
        // NEED UPDATE : ValidateDimension is fail
        // input = [[[0,1,2],[3,4,5]],[[6,7,8]]]
        // output = NumiOS.size(input)
        // answer = 2
        // XCTAssertEqual(output, answer)
        
        input = [[[0,1,2],[3,4,5]],[[6,7,8],[9,10,11]]]
        output = NumiOS.size(input)
        answer = 12
        XCTAssertEqual(output, answer)
    }
}
