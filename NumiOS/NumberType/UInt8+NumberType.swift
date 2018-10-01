//
//  UInt8+NumberType.swift
//  NumiOS
//
//  Created by 윤중현 on 01/10/2018.
//  Copyright © 2018 Seungyoun Yi. All rights reserved.
//

extension UInt8: NumericType {
    
    public static func + (lhs: UInt8, rhs: Any) -> UInt8 {
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
    
    public static func + (lhs: UInt8, rhs: Float) -> UInt8 {
        return lhs + UInt8(rhs)
    }
    
    public static func + (lhs: UInt8, rhs: Float80) -> UInt8 {
        return lhs + UInt8(rhs)
    }
    
    public static func + (lhs: UInt8, rhs: Double) -> UInt8 {
        return lhs + UInt8(rhs)
    }
    
    public static func + (lhs: UInt8, rhs: Int) -> UInt8 {
        return lhs + UInt8(rhs)
    }
    
    public static func + (lhs: UInt8, rhs: Int8) -> UInt8 {
        return lhs + UInt8(rhs)
    }
    
    public static func + (lhs: UInt8, rhs: Int16) -> UInt8 {
        return lhs + UInt8(rhs)
    }
    
    public static func + (lhs: UInt8, rhs: Int32) -> UInt8 {
        return lhs + UInt8(rhs)
    }
    
    public static func + (lhs: UInt8, rhs: Int64) -> UInt8 {
        return lhs + UInt8(rhs)
    }
    
    public static func + (lhs: UInt8, rhs: UInt) -> UInt8 {
        return lhs + UInt8(rhs)
    }
    
    public static func + (lhs: UInt8, rhs: UInt16) -> UInt8 {
        return lhs + UInt8(rhs)
    }
    
    public static func + (lhs: UInt8, rhs: UInt32) -> UInt8 {
        return lhs + UInt8(rhs)
    }
    
    public static func + (lhs: UInt8, rhs: UInt64) -> UInt8 {
        return lhs + UInt8(rhs)
    }
    
    public static func - (lhs: UInt8, rhs: Any) -> UInt8 {
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
    
    public static func - (lhs: UInt8, rhs: Float) -> UInt8 {
        return lhs - UInt8(rhs)
    }
    
    public static func - (lhs: UInt8, rhs: Float80) -> UInt8 {
        return lhs - UInt8(rhs)
    }
    
    public static func - (lhs: UInt8, rhs: Double) -> UInt8 {
        return lhs - UInt8(rhs)
    }
    
    public static func - (lhs: UInt8, rhs: Int) -> UInt8 {
        return lhs - UInt8(rhs)
    }
    
    public static func - (lhs: UInt8, rhs: Int8) -> UInt8 {
        return lhs - UInt8(rhs)
    }
    
    public static func - (lhs: UInt8, rhs: Int16) -> UInt8 {
        return lhs - UInt8(rhs)
    }
    
    public static func - (lhs: UInt8, rhs: Int32) -> UInt8 {
        return lhs - UInt8(rhs)
    }
    
    public static func - (lhs: UInt8, rhs: Int64) -> UInt8 {
        return lhs - UInt8(rhs)
    }
    
    public static func - (lhs: UInt8, rhs: UInt) -> UInt8 {
        return lhs - UInt8(rhs)
    }
    
    public static func - (lhs: UInt8, rhs: UInt16) -> UInt8 {
        return lhs - UInt8(rhs)
    }
    
    public static func - (lhs: UInt8, rhs: UInt32) -> UInt8 {
        return lhs - UInt8(rhs)
    }
    
    public static func - (lhs: UInt8, rhs: UInt64) -> UInt8 {
        return lhs - UInt8(rhs)
    }
    
    public static func * (lhs: UInt8, rhs: Any) -> UInt8 {
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
    
    public static func * (lhs: UInt8, rhs: Float) -> UInt8 {
        return lhs * UInt8(rhs)
    }
    
    public static func * (lhs: UInt8, rhs: Float80) -> UInt8 {
        return lhs * UInt8(rhs)
    }
    
    public static func * (lhs: UInt8, rhs: Double) -> UInt8 {
        return lhs * UInt8(rhs)
    }
    
    public static func * (lhs: UInt8, rhs: Int) -> UInt8 {
        return lhs * UInt8(rhs)
    }
    
    public static func * (lhs: UInt8, rhs: Int8) -> UInt8 {
        return lhs * UInt8(rhs)
    }
    
    public static func * (lhs: UInt8, rhs: Int16) -> UInt8 {
        return lhs * UInt8(rhs)
    }
    
    public static func * (lhs: UInt8, rhs: Int32) -> UInt8 {
        return lhs * UInt8(rhs)
    }
    
    public static func * (lhs: UInt8, rhs: Int64) -> UInt8 {
        return lhs * UInt8(rhs)
    }
    
    public static func * (lhs: UInt8, rhs: UInt) -> UInt8 {
        return lhs * UInt8(rhs)
    }
    
    public static func * (lhs: UInt8, rhs: UInt16) -> UInt8 {
        return lhs * UInt8(rhs)
    }
    
    public static func * (lhs: UInt8, rhs: UInt32) -> UInt8 {
        return lhs * UInt8(rhs)
    }
    
    public static func * (lhs: UInt8, rhs: UInt64) -> UInt8 {
        return lhs * UInt8(rhs)
    }
    
    public static func / (lhs: UInt8, rhs: Any) -> UInt8 {
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
    
    public static func / (lhs: UInt8, rhs: Float) -> UInt8 {
        return lhs / UInt8(rhs)
    }
    
    public static func / (lhs: UInt8, rhs: Float80) -> UInt8 {
        return lhs / UInt8(rhs)
    }
    
    public static func / (lhs: UInt8, rhs: Double) -> UInt8 {
        return lhs / UInt8(rhs)
    }
    
    public static func / (lhs: UInt8, rhs: Int) -> UInt8 {
        return lhs / UInt8(rhs)
    }
    
    public static func / (lhs: UInt8, rhs: Int8) -> UInt8 {
        return lhs / UInt8(rhs)
    }
    
    public static func / (lhs: UInt8, rhs: Int16) -> UInt8 {
        return lhs / UInt8(rhs)
    }
    
    public static func / (lhs: UInt8, rhs: Int32) -> UInt8 {
        return lhs / UInt8(rhs)
    }
    
    public static func / (lhs: UInt8, rhs: Int64) -> UInt8 {
        return lhs / UInt8(rhs)
    }
    
    public static func / (lhs: UInt8, rhs: UInt) -> UInt8 {
        return lhs / UInt8(rhs)
    }
    
    public static func / (lhs: UInt8, rhs: UInt16) -> UInt8 {
        return lhs / UInt8(rhs)
    }
    
    public static func / (lhs: UInt8, rhs: UInt32) -> UInt8 {
        return lhs / UInt8(rhs)
    }
    
    public static func / (lhs: UInt8, rhs: UInt64) -> UInt8 {
        return lhs / UInt8(rhs)
    }
    
    public static func += (lhs: inout UInt8, rhs: Any) {
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
    
    public static func += (lhs: inout UInt8, rhs: Float) {
        lhs += UInt8(rhs)
    }
    
    public static func += (lhs: inout UInt8, rhs: Float80) {
        lhs += UInt8(rhs)
    }
    
    public static func += (lhs: inout UInt8, rhs: Double) {
        lhs += UInt8(rhs)
    }
    
    public static func += (lhs: inout UInt8, rhs: Int) {
        lhs += UInt8(rhs)
    }
    
    public static func += (lhs: inout UInt8, rhs: Int8) {
        lhs += UInt8(rhs)
    }
    
    public static func += (lhs: inout UInt8, rhs: Int16) {
        lhs += UInt8(rhs)
    }
    
    public static func += (lhs: inout UInt8, rhs: Int32) {
        lhs += UInt8(rhs)
    }
    
    public static func += (lhs: inout UInt8, rhs: Int64) {
        lhs += UInt8(rhs)
    }
    
    public static func += (lhs: inout UInt8, rhs: UInt) {
        lhs += UInt8(rhs)
    }
    
    public static func += (lhs: inout UInt8, rhs: UInt16) {
        lhs += UInt8(rhs)
    }
    
    public static func += (lhs: inout UInt8, rhs: UInt32) {
        lhs += UInt8(rhs)
    }
    
    public static func += (lhs: inout UInt8, rhs: UInt64) {
        lhs += UInt8(rhs)
    }
}
