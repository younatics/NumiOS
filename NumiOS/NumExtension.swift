//
//  NumExtension.swift
//  NumiOS
//
//  Created by Seungyoun Yi on 30/09/2018.
//  Copyright © 2018 Seungyoun Yi. All rights reserved.
//

import Foundation

extension Array {
    public func shape() -> [Int] {
        return NumiOS.shape(self as Array<Any>)
    }
}
