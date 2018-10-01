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

    func testEye() {
        var input: [Int] = [0,1,2,3,4]
        var output = NumiOS.eye(input)
        var answer = [
            [1,0,0,0,0],
            [0,1,0,0,0],
            [0,0,1,0,0],
            [0,0,0,1,0],
            [0,0,0,0,1]]
        XCTAssertEqual(output, answer)

        input = [0,0,0,0,1,1,2,3,0,6,4]
        output = NumiOS.eye(input, classes: 8)
        answer = [
            [1,0,0,0,0,0,0,0],
            [1,0,0,0,0,0,0,0],
            [1,0,0,0,0,0,0,0],
            [1,0,0,0,0,0,0,0],
            [0,1,0,0,0,0,0,0],
            [0,1,0,0,0,0,0,0],
            [0,0,1,0,0,0,0,0],
            [0,0,0,1,0,0,0,0],
            [1,0,0,0,0,0,0,0],
            [0,0,0,0,0,0,1,0],
            [0,0,0,0,1,0,0,0]]
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
    
    func testMean() {
        var input: [Any] = [0, 1, 2, 3]
        var output: Double = NumiOS.mean(input)
        var answer: Double = 1.5
        XCTAssertEqual(output, answer)
        
        input = [[1, 2, 3, 4, 5], [1, 2, 3, 4, 5]]
        output = NumiOS.mean(input)
        answer = 3.0
        XCTAssertEqual(output, answer)
        
        input = [[[ 0.95979688,  0.08343238,  0.33695294,  0.78382111],
                  [ 0.36685429,  0.86955043,  0.88227388,  0.79091495],
                  [ 0.63368575,  0.5130265 ,  0.0619997 ,  0.6573761 ]],
                 [[ 0.45284015,  0.08635302,  0.94612675,  0.33949862],
                  [ 0.17685103,  0.26249988,  0.44127751,  0.3318031 ],
                  [ 0.18581007,  0.66045853,  0.29541049,  0.33626342]]]
        output = NumiOS.mean(input)
        answer = 0.47728656166666666
        XCTAssertEqual(output, answer)
    }
}
