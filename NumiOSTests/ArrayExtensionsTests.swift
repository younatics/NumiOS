//
//  ArrayExtensionsTests.swift
//  NumiOSTests
//
//  Created by 윤중현 on 30/09/2018.
//  Copyright © 2018 Seungyoun Yi. All rights reserved.
//

import XCTest
import NumiOS

class ArrayExtensionsTests: XCTestCase {
    func testShape() {
        var result = [1,2,3,4].shape()
        XCTAssertEqual(result, [4])
        
        result = [
            [1,2,3,4,5,6],
            [1,2,3,4,5,6],
            [1,2,3],
        ].shape()
        XCTAssertEqual(result, [3,6])
    }
}
