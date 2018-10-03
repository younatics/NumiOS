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
        output = NumiOS.oneHotEncoding(input, classes: 8)
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
    
    func testEye() {
        var run: () -> () = {
            let inputRows: Int = 3
            let output: [[Int]] = NumiOS.eye(rows: inputRows)
            let answer: [[Int]] = [[1,0,0],
                                   [0,1,0],
                                   [0,0,1]]
            XCTAssertEqual(output, answer)
        }
        run()
        
        run = {
            let inputRows: Int = 3
            let inputDiagonal: Int = 1
            let output: [[Int]] = NumiOS.eye(rows: inputRows, diagonal: inputDiagonal)
            let answer: [[Int]] = [[0,1,0],
                                   [0,0,1],
                                   [0,0,0]]
            XCTAssertEqual(output, answer)
        }
        run()
        
        run = {
            let inputRows: Int = 3
            let inputColumns: Int = 5
            let output: [[Float]] = NumiOS.eye(rows: inputRows, columns: inputColumns)
            let answer: [[Float]] = [[1,0,0,0,0],
                                     [0,1,0,0,0],
                                     [0,0,1,0,0]]
            XCTAssertEqual(output, answer)
        }
        run()
        
        run = {
            let inputRows: Int = 3
            let inputColumns: Int = 5
            let inputDiagonal: Int = 2
            let output: [[Float]] = NumiOS.eye(rows: inputRows, columns: inputColumns, diagonal: inputDiagonal)
            let answer: [[Float]] = [[0,0,1,0,0],
                                     [0,0,0,1,0],
                                     [0,0,0,0,1]]
            XCTAssertEqual(output, answer)
        }
        run()
    }
    
    func testUnique() {
        var run: () -> () = {
            let inputArray: [Int] = [3,1,2,3,4,1,2,0,1,4,23,4,2,3,2,3]
            let output: [Int] = NumiOS.unique(inputArray)
            let answer: [Int] = [3,1,2,4,0,23]
            XCTAssertEqual(output, answer)
            
            let outputSorted: [Int] = output.sorted()
            let answerSorted: [Int] = [0,1,2,3,4,23]
            XCTAssertEqual(outputSorted, answerSorted)
        }
        run()
        
        run = {
            let inputArray: [[[Int]]] = [[[1,2,3],[4,5,6]],[[1,2,3]],[[1,2,3],[4,5,6]]]
            let output: [Any] = NumiOS.unique(inputArray, type: [[Int]].self)
            let answer: [Any] = [[[1,2,3],[4,5,6]],[[1,2,3]]]
            guard let outputCasted: [[[Int]]] = output as? [[[Int]]] else {
                XCTAssert(false, "output can't cast to [[[Int]]]. output : \(output)")
                return
            }
            guard let answerCasted: [[[Int]]] = answer as? [[[Int]]] else {
                XCTAssert(false, "output can't cast to [[[Int]]]. output : \(answer)")
                return
            }
            XCTAssertEqual(outputCasted, answerCasted)
        }
        run()
    }
    
    func testConcatenate() {
        var run: () -> () = {
            let input0: [Int] = [0,1,2,3]
            let input1: [Int] = [0,1,2,3]
            let output: [Any] = NumiOS.concatenate(input0, input1)
            let answer: [Any] = [0,1,2,3,0,1,2,3]
            let outputCastToInt: Any = output.castToInt()
            let answerCastToInt: Any = answer.castToInt()
            guard let outputCasted: [Int] = outputCastToInt as? [Int] else {
                XCTAssert(false, "output can't cast to [Int]. output : \(outputCastToInt)")
                return
            }
            guard let answerCasted: [Int] = answerCastToInt as? [Int] else {
                XCTAssert(false, "answer can't cast to [Int]. answer : \(answerCastToInt)")
                return
            }
            XCTAssertEqual(outputCasted, answerCasted)
        }
        run()
        
        run = {
            let input0: [[Int]] = [[0,1,2,3]]
            let input1: [[Int]] = [[4,5,6,7]]
            let input2: [[Int]] = [[10,11,12,13]]
            let output: [Any] = NumiOS.concatenate(input0, input1, input2)
            let answer: [Any] = [[0,1,2,3],[4,5,6,7],[10,11,12,13]]
            let outputCastToInt: Any = output.castToInt()
            let answerCastToInt: Any = answer.castToInt()
            guard let outputCasted: [[Int]] = outputCastToInt as? [[Int]] else {
                XCTAssert(false, "output can't cast to [[Int]]. output : \(outputCastToInt)")
                return
            }
            guard let answerCasted: [[Int]] = answerCastToInt as? [[Int]] else {
                XCTAssert(false, "answer can't cast to [[Int]]. answer : \(answerCastToInt)")
                return
            }
            XCTAssertEqual(outputCasted, answerCasted)
        }
        run()

        run = {
            let input0: [Any] = [
                [0,1,2,3]
            ]
            let input1: [Any] = [
                [4,5,6,7]
            ]
            let output: [Any] = NumiOS.concatenate(input0, input1)
            let answer: [Any] = [
                [0,1,2,3],
                [4,5,6,7]
            ]
            let outputCastToInt: Any = output.castToInt()
            let answerCastToInt: Any = answer.castToInt()
            guard let outputCasted: [[Int]] = outputCastToInt as? [[Int]] else {
                XCTAssert(false, "output can't cast to [[Int]]. output : \(outputCastToInt)")
                return
            }
            guard let answerCasted: [[Int]] = answerCastToInt as? [[Int]] else {
                XCTAssert(false, "answer can't cast to [[Int]]. answer : \(answerCastToInt)")
                return
            }
            XCTAssertEqual(outputCasted, answerCasted)
        }
        run()

        run = {
            let input0: [Any] = [[[0, 1, 2]], [[0, 1, 2, 3]]]
            let input1: [Any] = [[[4, 5, 6]], [[4, 5, 6, 7]]]
            let output: [Any] = NumiOS.concatenate(input0, input1)
            let answer: [Any] = [
                [[0, 1, 2]],
                [[0, 1, 2, 3]],
                [[4, 5, 6]],
                [[4, 5, 6, 7]]
            ]
            let outputCastToInt: Any = output.castToInt()
            let answerCastToInt: Any = answer.castToInt()
            guard let outputCasted: [[[Int]]] = outputCastToInt as? [[[Int]]] else {
                XCTAssert(false, "output can't cast to [[[Int]]]. output : \(outputCastToInt)")
                return
            }
            guard let answerCasted: [[[Int]]] = answerCastToInt as? [[[Int]]] else {
                XCTAssert(false, "answer can't cast to [[[Int]]]. answer : \(answerCastToInt)")
                return
            }
            XCTAssertEqual(outputCasted, answerCasted)
        }
        run()

        run = {
            let input0: [Any] = [[0, 1, 2, 3], [0, 1, 2, 3]]
            let input1: [Any] = [[0, 1, 2, 3], [0, 1, 2, 3]]
            let output: [Any] = NumiOS.concatenate(input0, input1)
            let answer: [Any] = [
                [0, 1, 2, 3],
                [0, 1, 2, 3],
                [0, 1, 2, 3],
                [0, 1, 2, 3],
            ]
            let outputCastToInt: Any = output.castToInt()
            let answerCastToInt: Any = answer.castToInt()
            guard let outputCasted: [[Int]] = outputCastToInt as? [[Int]] else {
                XCTAssert(false, "output can't cast to [[Int]]. output : \(outputCastToInt)")
                return
            }
            guard let answerCasted: [[Int]] = answerCastToInt as? [[Int]] else {
                XCTAssert(false, "answer can't cast to [[Int]]. answer : \(answerCastToInt)")
                return
            }
            XCTAssertEqual(outputCasted, answerCasted)
        }
        run()

        run = {
            let input0: [Any] = [[[0, 1, 2, 3]], [[0, 1, 2, 3]]]
            let input1: [Any] = [[[4, 5, 6, 7]], [[4, 5, 6, 7]]]
            let output: [Any] = NumiOS.concatenate(input0, input1)
            let answer: [Any] = [
                [[0, 1, 2, 3]],
                [[0, 1, 2, 3]],
                [[4, 5, 6, 7]],
                [[4, 5, 6, 7]]
            ]
            let outputCastToInt: Any = output.castToInt()
            let answerCastToInt: Any = answer.castToInt()
            guard let outputCasted: [[[Int]]] = outputCastToInt as? [[[Int]]] else {
                XCTAssert(false, "output can't cast to [[[Int]]]. output : \(outputCastToInt)")
                return
            }
            guard let answerCasted: [[[Int]]] = answerCastToInt as? [[[Int]]] else {
                XCTAssert(false, "answer can't cast to [[[Int]]]. answer : \(answerCastToInt)")
                return
            }
            XCTAssertEqual(outputCasted, answerCasted)
        }
        run()


        run = {
            let input0: [Any] =
                [
                    [
                        [0,1],
                        [2,3],
                    ],
                    [
                        [0,1],
                        [2,3],
                    ],
                    [
                        [0,1],
                        [2,3],
                    ],
                    [
                        [0,1],
                        [2,3],
                    ],
                ]
            let input1: [Any] =
                [
                    [
                        [0,1],
                        [2,3],
                    ],
                    [
                        [0,1],
                        [2,3],
                    ],
                    [
                        [0,1],
                        [2,3],
                    ],
                    [
                        [0,1],
                        [2,3],
                    ],
                ]
            let output: [Any] = NumiOS.concatenate(input0, input1)
            let answer: [Any] =
                [
                    [
                        [0,1],
                        [2,3],
                    ],
                    [
                        [0,1],
                        [2,3],
                    ],
                    [
                        [0,1],
                        [2,3],
                    ],
                    [
                        [0,1],
                        [2,3],
                    ],
                    [
                        [0,1],
                        [2,3],
                    ],
                    [
                        [0,1],
                        [2,3],
                    ],
                    [
                        [0,1],
                        [2,3],
                    ],
                    [
                        [0,1],
                        [2,3],
                    ],
                ]
            let outputCastToInt: Any = output.castToInt()
            let answerCastToInt: Any = answer.castToInt()
            guard let outputCasted: [[[Int]]] = outputCastToInt as? [[[Int]]] else {
                XCTAssert(false, "output can't cast to [[[Int]]]. output : \(outputCastToInt)")
                return
            }
            guard let answerCasted: [[[Int]]] = answerCastToInt as? [[[Int]]] else {
                XCTAssert(false, "answer can't cast to [[[Int]]]. answer : \(answerCastToInt)")
                return
            }
            XCTAssertEqual(outputCasted, answerCasted)
        }
        run()

        run = {
            let input0: [Any] = [[1,2,3],[4,5,6],[7,8,9]]
            let input1: [Any] = [[10,11,12]]
            let output: [Any] = NumiOS.concatenate(input0, input1)
            let answer: [Any] = [
                [1,2,3],
                [4,5,6],
                [7,8,9],
                [10,11,12]
            ]
            let outputCastToInt: Any = output.castToInt()
            let answerCastToInt: Any = answer.castToInt()
            guard let outputCasted: [[Int]] = outputCastToInt as? [[Int]] else {
                XCTAssert(false, "output can't cast to [[Int]]. output : \(outputCastToInt)")
                return
            }
            guard let answerCasted: [[Int]] = answerCastToInt as? [[Int]] else {
                XCTAssert(false, "answer can't cast to [[Int]]. answer : \(answerCastToInt)")
                return
            }
            XCTAssertEqual(outputCasted, answerCasted)
        }
        run()
    }
    
    func testDimensionsLevel() {
        var input: [Any] = [[0,1,2,3],[0,1,2,3]]
        var output: Int = NumiOS.dimensionsLevel(input)
        var answer: Int = 2
        XCTAssertEqual(output, answer)
        
        input = [[[0,1,2,3],[0,1,2,3]],[[0,1,2,3],[0,1,2,3]]]
        output = NumiOS.dimensionsLevel(input)
        answer = 3
        XCTAssertEqual(output, answer)
        
        input = [[[[1],[2]],[[3],[4]]],[[1],[2]],[[3],[4]]]
        output = NumiOS.dimensionsLevel(input)
        answer = 4
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
        var outputInt: Int = NumiOS.mean(input)
        var answerInt: Int = 1
        var outputFloat: Float = NumiOS.mean(input)
        var answerFloat: Float = 1.5
        var outputDouble: Double = NumiOS.mean(input)
        var answerDouble: Double = 1.5
        XCTAssertEqual(outputInt, answerInt)
        XCTAssertEqual(outputFloat, answerFloat)
        XCTAssertEqual(outputDouble, answerDouble)
        
        input = [[1, 2, 3, 4, 5], [1, 2, 3, 4, 5]]
        outputInt = NumiOS.mean(input)
        answerInt = 3
        outputFloat = NumiOS.mean(input)
        answerFloat = 3.0
        outputDouble = NumiOS.mean(input)
        answerDouble = 3.0
        XCTAssertEqual(outputInt, answerInt)
        XCTAssertEqual(outputFloat, answerFloat)
        XCTAssertEqual(outputDouble, answerDouble)
        
        input = [[nil, 2, 3, 4, 5], [1, 2, 3, 4, nil]]
        outputInt = NumiOS.mean(input)
        answerInt = 3
        outputFloat = NumiOS.mean(input)
        answerFloat = 3.0
        outputDouble = NumiOS.mean(input)
        answerDouble = 3.0
        XCTAssertEqual(outputInt, answerInt)
        XCTAssertEqual(outputFloat, answerFloat)
        XCTAssertEqual(outputDouble, answerDouble)
        
        input = [[nil, 6, 8, 10, 0, 0, 0, 0], [ 6, 6, 8, 0, 0, 0, 0, nil]]
        outputInt = NumiOS.mean(input)
        answerInt = 3
        outputFloat = NumiOS.mean(input)
        answerFloat = 3.142857
        outputDouble = NumiOS.mean(input)
        answerDouble = 3.142857142857143
        XCTAssertEqual(outputInt, answerInt)
        XCTAssertEqual(outputFloat, answerFloat)
        XCTAssertEqual(outputDouble, answerDouble)
        
        input = [[[ 0.95979688,  0.08343238,  0.33695294,  0.78382111],
                  [ 0.36685429,  0.86955043,  0.88227388,  0.79091495],
                  [ 0.63368575,  0.5130265 ,  0.0619997 ,  0.6573761 ]],
                 [[ 0.45284015,  0.08635302,  0.94612675,  0.33949862],
                  [ 0.17685103,  0.26249988,  0.44127751,  0.3318031 ],
                  [ 0.18581007,  0.66045853,  0.29541049,  0.33626342]]]
        outputInt = NumiOS.mean(input)
        answerInt = 0
        outputFloat = NumiOS.mean(input)
        answerFloat = 0.47728658
        outputDouble = NumiOS.mean(input)
        answerDouble = 0.47728656166666666
        XCTAssertEqual(outputInt, answerInt)
        XCTAssertEqual(outputFloat, answerFloat)
        XCTAssertEqual(outputDouble, answerDouble)
    }
    
    func testSum() {
        var input: [Any] = [0, 1, 2, 3]
        var outputInt: (total: Int, size: Int) = NumiOS.sum(input)
        var answerInt: (total: Int, size: Int) = (6, 4)
        XCTAssertEqual(outputInt.total, answerInt.total)
        XCTAssertEqual(outputInt.size, answerInt.size)
        
        
        input = [[1, 2, 3, 4, 5], [1, 2, 3, 4, 5]]
        outputInt = NumiOS.sum(input)
        answerInt = (30, 10)
        XCTAssertEqual(outputInt.total, answerInt.total)
        XCTAssertEqual(outputInt.size, answerInt.size)
        
        input = [[nil, 2, 3, 4, 5], [1, 2, 3, 4, nil]]
        outputInt = NumiOS.sum(input)
        answerInt = (24, 8)
        XCTAssertEqual(outputInt.total, answerInt.total)
        XCTAssertEqual(outputInt.size, answerInt.size)
        
        input = [[[ 0.95979688,  0.08343238,  0.33695294,  0.78382111],
                  [ 0.36685429,  0.86955043,  0.88227388,  0.79091495],
                  [ 0.63368575,  0.5130265 ,  0.0619997 ,  0.6573761 ]],
                [[ 0.45284015,  0.08635302,  0.94612675,  0.33949862],
                 [ 0.17685103,  0.26249988,  0.44127751,  0.3318031 ],
                 [ 0.18581007,  0.66045853,  0.29541049,  0.33626342]]]
        let outputFloat: (total: Float, size: Float) = NumiOS.sum(input)
        let answerFloat: (total: Float, size: Float) = (11.454878, 24)
        XCTAssertEqual(outputFloat.total, answerFloat.total)
        XCTAssertEqual(outputFloat.size, answerFloat.size)
        
        input = [[[ 0.95979688,  0.08343238,  0.33695294,  0.78382111],
                  [ 0.36685429,  0.86955043,  0.88227388,  0.79091495],
                  [ 0.63368575,  0.5130265 ,  0.0619997 ,  0.6573761 ]],
                [[ 0.45284015,  0.08635302,  0.94612675,  0.33949862],
                 [ 0.17685103,  0.26249988,  0.44127751,  0.3318031 ],
                 [ 0.18581007,  0.66045853,  0.29541049,  0.33626342]]]
        let outputDouble: (total: Double, size: Double) = NumiOS.sum(input)
        let answerDouble: (total: Double, size: Double) = (11.45487748, 24)
        XCTAssertEqual(outputDouble.total, answerDouble.total)
        XCTAssertEqual(outputDouble.size, answerDouble.size)
    }
}
