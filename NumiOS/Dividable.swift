//
//  Dividable.swift
//  NumiOS
//
//  Created by 윤중현 on 02/10/2018.
//  Copyright © 2018 Seungyoun Yi. All rights reserved.
//

public protocol Dividable {
    static func / (lhs: Self, rhs: Self) -> Self
}

extension Int: Dividable { }
extension Float: Dividable { }
extension Double: Dividable { }
