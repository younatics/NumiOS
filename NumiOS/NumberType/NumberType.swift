//
//  NumberType.swift
//  NumiOS
//
//  Created by 윤중현 on 01/10/2018.
//  Copyright © 2018 Seungyoun Yi. All rights reserved.
//

public protocol NumericType: Numeric {
    static func + (lhs: Self, rhs: Any) -> Self
    static func + (lhs: Self, rhs: Self) -> Self
    static func + (lhs: Self, rhs: Double) -> Self
    static func + (lhs: Self, rhs: Float) -> Self
    static func + (lhs: Self, rhs: Float80) -> Self
    static func + (lhs: Self, rhs: Int) -> Self
    static func + (lhs: Self, rhs: Int8) -> Self
    static func + (lhs: Self, rhs: Int16) -> Self
    static func + (lhs: Self, rhs: Int32) -> Self
    static func + (lhs: Self, rhs: Int64) -> Self
    static func + (lhs: Self, rhs: UInt) -> Self
    static func + (lhs: Self, rhs: UInt8) -> Self
    static func + (lhs: Self, rhs: UInt16) -> Self
    static func + (lhs: Self, rhs: UInt32) -> Self
    static func + (lhs: Self, rhs: UInt64) -> Self
    
    static func - (lhs: Self, rhs: Any) -> Self
    static func - (lhs: Self, rhs: Self) -> Self
    static func - (lhs: Self, rhs: Double) -> Self
    static func - (lhs: Self, rhs: Float) -> Self
    static func - (lhs: Self, rhs: Float80) -> Self
    static func - (lhs: Self, rhs: Int) -> Self
    static func - (lhs: Self, rhs: Int8) -> Self
    static func - (lhs: Self, rhs: Int16) -> Self
    static func - (lhs: Self, rhs: Int32) -> Self
    static func - (lhs: Self, rhs: Int64) -> Self
    static func - (lhs: Self, rhs: UInt) -> Self
    static func - (lhs: Self, rhs: UInt8) -> Self
    static func - (lhs: Self, rhs: UInt16) -> Self
    static func - (lhs: Self, rhs: UInt32) -> Self
    static func - (lhs: Self, rhs: UInt64) -> Self
    
    static func * (lhs: Self, rhs: Any) -> Self
    static func * (lhs: Self, rhs: Self) -> Self
    static func * (lhs: Self, rhs: Double) -> Self
    static func * (lhs: Self, rhs: Float) -> Self
    static func * (lhs: Self, rhs: Float80) -> Self
    static func * (lhs: Self, rhs: Int) -> Self
    static func * (lhs: Self, rhs: Int8) -> Self
    static func * (lhs: Self, rhs: Int16) -> Self
    static func * (lhs: Self, rhs: Int32) -> Self
    static func * (lhs: Self, rhs: Int64) -> Self
    static func * (lhs: Self, rhs: UInt) -> Self
    static func * (lhs: Self, rhs: UInt8) -> Self
    static func * (lhs: Self, rhs: UInt16) -> Self
    static func * (lhs: Self, rhs: UInt32) -> Self
    static func * (lhs: Self, rhs: UInt64) -> Self
    
    static func / (lhs: Self, rhs: Any) -> Self
    static func / (lhs: Self, rhs: Self) -> Self
    static func / (lhs: Self, rhs: Double) -> Self
    static func / (lhs: Self, rhs: Float) -> Self
    static func / (lhs: Self, rhs: Float80) -> Self
    static func / (lhs: Self, rhs: Int) -> Self
    static func / (lhs: Self, rhs: Int8) -> Self
    static func / (lhs: Self, rhs: Int16) -> Self
    static func / (lhs: Self, rhs: Int32) -> Self
    static func / (lhs: Self, rhs: Int64) -> Self
    static func / (lhs: Self, rhs: UInt) -> Self
    static func / (lhs: Self, rhs: UInt8) -> Self
    static func / (lhs: Self, rhs: UInt16) -> Self
    static func / (lhs: Self, rhs: UInt32) -> Self
    static func / (lhs: Self, rhs: UInt64) -> Self
    
    static func += (lhs: inout Self, rhs: Any)
    static func += (lhs: inout Self, rhs: Self)
    static func += (lhs: inout Self, rhs: Float)
    static func += (lhs: inout Self, rhs: Double)
    static func += (lhs: inout Self, rhs: Float80)
    static func += (lhs: inout Self, rhs: Int)
    static func += (lhs: inout Self, rhs: Int8)
    static func += (lhs: inout Self, rhs: Int16)
    static func += (lhs: inout Self, rhs: Int32)
    static func += (lhs: inout Self, rhs: Int64)
    static func += (lhs: inout Self, rhs: UInt)
    static func += (lhs: inout Self, rhs: UInt8)
    static func += (lhs: inout Self, rhs: UInt16)
    static func += (lhs: inout Self, rhs: UInt32)
    static func += (lhs: inout Self, rhs: UInt64)
}
