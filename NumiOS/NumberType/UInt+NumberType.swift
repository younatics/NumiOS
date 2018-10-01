//
//  UInt+NumberType.swift
//  NumiOS
//
//  Created by 윤중현 on 01/10/2018.
//  Copyright © 2018 Seungyoun Yi. All rights reserved.
//

extension UInt: NumericType {
    
    public static func + (lhs: UInt, rhs: Any) -> UInt {
        switch rhs {
        case let rhs as Float: return lhs + rhs
        case let rhs as Float80: return lhs + rhs
        case let rhs as Double: return lhs + rhs
        case let rhs as Int: return lhs + rhs
        case let rhs as Int8: return lhs + rhs
        case let rhs as Int16: return lhs + rhs
        case let rhs as Int32: return lhs + rhs
        case let rhs as Int64: return lhs + rhs
        case let rhs as UInt: return lhs + rhs
        case let rhs as UInt8: return lhs + rhs
        case let rhs as UInt16: return lhs + rhs
        case let rhs as UInt32: return lhs + rhs
        case let rhs as UInt64: return lhs + rhs
        default: fatalError("rhs should be Numuric type")
        }
    }
    
    public static func + (lhs: UInt, rhs: Float) -> UInt {
        return lhs + UInt(rhs)
    }
    
    public static func + (lhs: UInt, rhs: Float80) -> UInt {
        return lhs + UInt(rhs)
    }
    
    public static func + (lhs: UInt, rhs: Double) -> UInt {
        return lhs + UInt(rhs)
    }
    
    public static func + (lhs: UInt, rhs: Int) -> UInt {
        return lhs + UInt(rhs)
    }
    
    public static func + (lhs: UInt, rhs: Int8) -> UInt {
        return lhs + UInt(rhs)
    }
    
    public static func + (lhs: UInt, rhs: Int16) -> UInt {
        return lhs + UInt(rhs)
    }
    
    public static func + (lhs: UInt, rhs: Int32) -> UInt {
        return lhs + UInt(rhs)
    }
    
    public static func + (lhs: UInt, rhs: Int64) -> UInt {
        return lhs + UInt(rhs)
    }
    
    public static func + (lhs: UInt, rhs: UInt8) -> UInt {
        return lhs + UInt(rhs)
    }
    
    public static func + (lhs: UInt, rhs: UInt16) -> UInt {
        return lhs + UInt(rhs)
    }
    
    public static func + (lhs: UInt, rhs: UInt32) -> UInt {
        return lhs + UInt(rhs)
    }
    
    public static func + (lhs: UInt, rhs: UInt64) -> UInt {
        return lhs + UInt(rhs)
    }
    
    public static func - (lhs: UInt, rhs: Any) -> UInt {
        switch rhs {
        case let rhs as Float: return lhs + rhs
        case let rhs as Float80: return lhs + rhs
        case let rhs as Double: return lhs + rhs
        case let rhs as Int: return lhs + rhs
        case let rhs as Int8: return lhs + rhs
        case let rhs as Int16: return lhs + rhs
        case let rhs as Int32: return lhs + rhs
        case let rhs as Int64: return lhs + rhs
        case let rhs as UInt: return lhs + rhs
        case let rhs as UInt8: return lhs + rhs
        case let rhs as UInt16: return lhs + rhs
        case let rhs as UInt32: return lhs + rhs
        case let rhs as UInt64: return lhs + rhs
        default: fatalError("rhs should be Numuric type")
        }
    }
    
    public static func - (lhs: UInt, rhs: Float) -> UInt {
        return lhs - UInt(rhs)
    }
    
    public static func - (lhs: UInt, rhs: Float80) -> UInt {
        return lhs - UInt(rhs)
    }
    
    public static func - (lhs: UInt, rhs: Double) -> UInt {
        return lhs - UInt(rhs)
    }
    
    public static func - (lhs: UInt, rhs: Int) -> UInt {
        return lhs - UInt(rhs)
    }
    
    public static func - (lhs: UInt, rhs: Int8) -> UInt {
        return lhs - UInt(rhs)
    }
    
    public static func - (lhs: UInt, rhs: Int16) -> UInt {
        return lhs - UInt(rhs)
    }
    
    public static func - (lhs: UInt, rhs: Int32) -> UInt {
        return lhs - UInt(rhs)
    }
    
    public static func - (lhs: UInt, rhs: Int64) -> UInt {
        return lhs - UInt(rhs)
    }
    
    public static func - (lhs: UInt, rhs: UInt8) -> UInt {
        return lhs - UInt(rhs)
    }
    
    public static func - (lhs: UInt, rhs: UInt16) -> UInt {
        return lhs - UInt(rhs)
    }
    
    public static func - (lhs: UInt, rhs: UInt32) -> UInt {
        return lhs - UInt(rhs)
    }
    
    public static func - (lhs: UInt, rhs: UInt64) -> UInt {
        return lhs - UInt(rhs)
    }
    
    public static func * (lhs: UInt, rhs: Any) -> UInt {
        switch rhs {
        case let rhs as Float: return lhs + rhs
        case let rhs as Float80: return lhs + rhs
        case let rhs as Double: return lhs + rhs
        case let rhs as Int: return lhs + rhs
        case let rhs as Int8: return lhs + rhs
        case let rhs as Int16: return lhs + rhs
        case let rhs as Int32: return lhs + rhs
        case let rhs as Int64: return lhs + rhs
        case let rhs as UInt: return lhs + rhs
        case let rhs as UInt8: return lhs + rhs
        case let rhs as UInt16: return lhs + rhs
        case let rhs as UInt32: return lhs + rhs
        case let rhs as UInt64: return lhs + rhs
        default: fatalError("rhs should be Numuric type")
        }
    }
    
    public static func * (lhs: UInt, rhs: Float) -> UInt {
        return lhs * UInt(rhs)
    }
    
    public static func * (lhs: UInt, rhs: Float80) -> UInt {
        return lhs * UInt(rhs)
    }
    
    public static func * (lhs: UInt, rhs: Double) -> UInt {
        return lhs * UInt(rhs)
    }
    
    public static func * (lhs: UInt, rhs: Int) -> UInt {
        return lhs * UInt(rhs)
    }
    
    public static func * (lhs: UInt, rhs: Int8) -> UInt {
        return lhs * UInt(rhs)
    }
    
    public static func * (lhs: UInt, rhs: Int16) -> UInt {
        return lhs * UInt(rhs)
    }
    
    public static func * (lhs: UInt, rhs: Int32) -> UInt {
        return lhs * UInt(rhs)
    }
    
    public static func * (lhs: UInt, rhs: Int64) -> UInt {
        return lhs * UInt(rhs)
    }
    
    public static func * (lhs: UInt, rhs: UInt8) -> UInt {
        return lhs * UInt(rhs)
    }
    
    public static func * (lhs: UInt, rhs: UInt16) -> UInt {
        return lhs * UInt(rhs)
    }
    
    public static func * (lhs: UInt, rhs: UInt32) -> UInt {
        return lhs * UInt(rhs)
    }
    
    public static func * (lhs: UInt, rhs: UInt64) -> UInt {
        return lhs * UInt(rhs)
    }
    
    public static func / (lhs: UInt, rhs: Any) -> UInt {
        switch rhs {
        case let rhs as Float: return lhs + rhs
        case let rhs as Float80: return lhs + rhs
        case let rhs as Double: return lhs + rhs
        case let rhs as Int: return lhs + rhs
        case let rhs as Int8: return lhs + rhs
        case let rhs as Int16: return lhs + rhs
        case let rhs as Int32: return lhs + rhs
        case let rhs as Int64: return lhs + rhs
        case let rhs as UInt: return lhs + rhs
        case let rhs as UInt8: return lhs + rhs
        case let rhs as UInt16: return lhs + rhs
        case let rhs as UInt32: return lhs + rhs
        case let rhs as UInt64: return lhs + rhs
        default: fatalError("rhs should be Numuric type")
        }
    }
    
    public static func / (lhs: UInt, rhs: Float) -> UInt {
        return lhs / UInt(rhs)
    }
    
    public static func / (lhs: UInt, rhs: Float80) -> UInt {
        return lhs / UInt(rhs)
    }
    
    public static func / (lhs: UInt, rhs: Double) -> UInt {
        return lhs / UInt(rhs)
    }
    
    public static func / (lhs: UInt, rhs: Int) -> UInt {
        return lhs / UInt(rhs)
    }
    
    public static func / (lhs: UInt, rhs: Int8) -> UInt {
        return lhs / UInt(rhs)
    }
    
    public static func / (lhs: UInt, rhs: Int16) -> UInt {
        return lhs / UInt(rhs)
    }
    
    public static func / (lhs: UInt, rhs: Int32) -> UInt {
        return lhs / UInt(rhs)
    }
    
    public static func / (lhs: UInt, rhs: Int64) -> UInt {
        return lhs / UInt(rhs)
    }
    
    public static func / (lhs: UInt, rhs: UInt8) -> UInt {
        return lhs / UInt(rhs)
    }
    
    public static func / (lhs: UInt, rhs: UInt16) -> UInt {
        return lhs / UInt(rhs)
    }
    
    public static func / (lhs: UInt, rhs: UInt32) -> UInt {
        return lhs / UInt(rhs)
    }
    
    public static func / (lhs: UInt, rhs: UInt64) -> UInt {
        return lhs / UInt(rhs)
    }
    
    public static func += (lhs: inout UInt, rhs: Any) {
        switch rhs {
        case let rhs as Float: lhs += rhs
        case let rhs as Float80: lhs += rhs
        case let rhs as Double: lhs += rhs
        case let rhs as Int: lhs += rhs
        case let rhs as Int8: lhs += rhs
        case let rhs as Int16: lhs += rhs
        case let rhs as Int32: lhs += rhs
        case let rhs as Int64: lhs += rhs
        case let rhs as UInt: lhs += rhs
        case let rhs as UInt8: lhs += rhs
        case let rhs as UInt16: lhs += rhs
        case let rhs as UInt32: lhs += rhs
        case let rhs as UInt64: lhs += rhs
        default: fatalError("rhs should be Numuric type")
        }
    }
    
    public static func += (lhs: inout UInt, rhs: Float) {
        lhs += UInt(rhs)
    }
    
    public static func += (lhs: inout UInt, rhs: Float80) {
        lhs += UInt(rhs)
    }
    
    public static func += (lhs: inout UInt, rhs: Double) {
        lhs += UInt(rhs)
    }
    
    public static func += (lhs: inout UInt, rhs: Int) {
        lhs += UInt(rhs)
    }
    
    public static func += (lhs: inout UInt, rhs: Int8) {
        lhs += UInt(rhs)
    }
    
    public static func += (lhs: inout UInt, rhs: Int16) {
        lhs += UInt(rhs)
    }
    
    public static func += (lhs: inout UInt, rhs: Int32) {
        lhs += UInt(rhs)
    }
    
    public static func += (lhs: inout UInt, rhs: Int64) {
        lhs += UInt(rhs)
    }
    
    public static func += (lhs: inout UInt, rhs: UInt8) {
        lhs += UInt(rhs)
    }
    
    public static func += (lhs: inout UInt, rhs: UInt16) {
        lhs += UInt(rhs)
    }
    
    public static func += (lhs: inout UInt, rhs: UInt32) {
        lhs += UInt(rhs)
    }
    
    public static func += (lhs: inout UInt, rhs: UInt64) {
        lhs += UInt(rhs)
    }
}
