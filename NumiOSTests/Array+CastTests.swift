//
//  Array+CastTests.swift
//  NumiOSTests
//
//  Created by 윤중현 on 02/10/2018.
//  Copyright © 2018 Seungyoun Yi. All rights reserved.
//

import XCTest
import NumiOS

class Array_CastTests: XCTestCase {
    func testCast() {
        var run: () -> () = {
            let input: [Int] = [1,2,3,4]
            let output: [Int] = input.cast(to: Int.self, default: 0)
            let answer: [Int] = [1,2,3,4]
            XCTAssertEqual(output, answer)
        }
        run()

        run = {
            let input: [Any] = [1,0.1,2.1,0xff]
            let output: [Int] = input.cast(to: Int.self, default: 0)
            let answer: [Int] = [1,0,0,255]
            XCTAssertEqual(output, answer)
        }
        run()

        run = {
            let input: [Float?] = [1,0.1,2.1,0xff,nil]
            let output: [Float] = input.cast(to: Float.self, default: 0)
            let answer: [Float] = [1.0,0.1,2.1,255,0]
            XCTAssertEqual(output, answer)
        }
        run()

        run = {
            let input: [Double?] = [1,0.1,nil,2.1,0xff]
            let output: [Double] = input.cast(to: Double.self, default: 0)
            let answer: [Double] = [1.0,0.1,0,2.1,255]
            XCTAssertEqual(output, answer)
        }
        run()

        run = {
            let input: [Any] = [1,0.1,2.1,0xff,"nil"]
            let output: [Int] = input.cast(to: Int.self, default: 0)
            let answer: [Int] = [1,0,0,255,0]
            XCTAssertEqual(output, answer)
        }
        run()

        run = {
            let input: [Any] = [1,0.1,2.1,0xff,"nil"]
            let output: [Int] = input.cast(to: Optional<Int>.self, default: nil).compactMap({ $0 })
            let answer: [Int] = [1,255]
            XCTAssertEqual(output, answer)
        }
        run()

        run = {
            let input: [Array<Any>] = [[4,5,6,7]]
            let output: [Any] = input.castToInt()
            let answer: [[Int]] = [[4,5,6,7]]
            XCTAssertEqual(output as! [[Int]], answer)
        }
        run()
        
        run = {
            let input: [Any] = [[4,5,6,7]]
            let output: [Any] = input.castToInt()
            let answer: [[Int]] = [[4,5,6,7]]
            XCTAssertEqual(output as! [[Int]], answer)
        }
        run()
    }
}
