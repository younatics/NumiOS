# NumiOS
[![Version](https://img.shields.io/cocoapods/v/NumiOS.svg?style=flat)](http://cocoapods.org/pods/NumiOS)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](https://github.com/younatics/NumiOS/blob/master/LICENSE)
[![Platform](https://img.shields.io/cocoapods/p/NumiOS.svg?style=flat)](http://cocoapods.org/pods/Triangulation)
[![Swift 4.0](https://img.shields.io/badge/Swift-4.2-orange.svg?style=flat)](https://developer.apple.com/swift/)

## Introduction
⚡️Numpy in iOS

## Requirements

`NumiOS` is written in Swift 4.2. Compatible with iOS 9.0+

## Installation

### Cocoapods

NumiOS is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'NumiOS'
```
### Carthage
```
github "younatics/NumiOS"
```

## Usage

```Swift 
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
        var run: () -> () = {
            let input: [Int] = [0,1,2,3,4]
            let output: [[Int]] = NumiOS.oneHotEncoding(input)
            let answer: [[Int]] = [
                [1,0,0,0,0],
                [0,1,0,0,0],
                [0,0,1,0,0],
                [0,0,0,1,0],
                [0,0,0,0,1]]
            XCTAssertEqual(output, answer)
        }
        run()
        
        run = {
            let input: [Int] = [0,0,0,0,1,1,2,3,0,6,4]
            let output: [[Int]] = NumiOS.oneHotEncoding(input, classes: 8)
            let answer: [[Int]] = [
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
        run()
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
    }
    
    func testDimensionsLevel() {
        var input: [Any] = [[0,1,2,3],[0,1,2,3]]
        var output: Int = NumiOS.dimensionsLevel(input)
        var answer: Int = 2
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
    }
    
    func testValidateMatrix() {
        var input: [Any] = [0, 1, 2, 3]
        var output: Bool = NumiOS.validateMatrix(array: input)
        var answer = true
        XCTAssertEqual(output, answer)
    }
  
    func testSize() {
        var input: [Any] = [0, 1, 2, 3]
        var output: Int = NumiOS.size(input)
        var answer = 4
        XCTAssertEqual(output, answer)
        
        input = [[0,1],[2,3],[4,5]]
        output = NumiOS.size(input)
        answer = 6
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
    }
    
    func testSum() {
        var input: [Any] = [0, 1, 2, 3]
        var outputInt: (total: Int, size: Int) = NumiOS.sum(input)
        var answerInt: (total: Int, size: Int) = (6, 4)
        XCTAssertEqual(outputInt.total, answerInt.total)
        XCTAssertEqual(outputInt.size, answerInt.size)
    }
}
```

## References
#### Please tell me or make pull request if you use this library in your application :) 

## Author
[younatics](https://twitter.com/younatics)
<a href="http://twitter.com/younatics" target="_blank"><img alt="Twitter" src="https://img.shields.io/twitter/follow/younatics.svg?style=social&label=Follow"></a>
[tokijh](https://github.com/tokijh)
## License
NumiOS is available under the MIT license. See the LICENSE file for more info.
