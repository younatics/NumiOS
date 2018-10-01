//
//  UInt16+NumberType.swift
//  NumiOS
//
//  Created by 윤중현 on 01/10/2018.
//  Copyright © 2018 Seungyoun Yi. All rights reserved.
//

extension UInt16: NumericType {
    
    public static func + (lhs: UInt16, rhs: Any) -> UInt16 {
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
    
    public static func + (lhs: UInt16, rhs: Float) -> UInt16 {
        return lhs + UInt16(rhs)
    }
    
    public static func + (lhs: UInt16, rhs: Float80) -> UInt16 {
        return lhs + UInt16(rhs)
    }
    
    public static func + (lhs: UInt16, rhs: Double) -> UInt16 {
        return lhs + UInt16(rhs)
    }
    
    public static func + (lhs: UInt16, rhs: Int) -> UInt16 {
        return lhs + UInt16(rhs)
    }
    
    public static func + (lhs: UInt16, rhs: Int8) -> UInt16 {
        return lhs + UInt16(rhs)
    }
    
    public static func + (lhs: UInt16, rhs: Int16) -> UInt16 {
        return lhs + UInt16(rhs)
    }
    
    public static func + (lhs: UInt16, rhs: Int32) -> UInt16 {
        return lhs + UInt16(rhs)
    }
    
    public static func + (lhs: UInt16, rhs: Int64) -> UInt16 {
        return lhs + UInt16(rhs)
    }
    
    public static func + (lhs: UInt16, rhs: UInt) -> UInt16 {
        return lhs + UInt16(rhs)
    }
    
    public static func + (lhs: UInt16, rhs: UInt8) -> UInt16 {
        return lhs + UInt16(rhs)
    }
    
    public static func + (lhs: UInt16, rhs: UInt32) -> UInt16 {
        return lhs + UInt16(rhs)
    }
    
    public static func + (lhs: UInt16, rhs: UInt64) -> UInt16 {
        return lhs + UInt16(rhs)
    }
    
    public static func - (lhs: UInt16, rhs: Any) -> UInt16 {
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
    
    public static func - (lhs: UInt16, rhs: Float) -> UInt16 {
        return lhs - UInt16(rhs)
    }
    
    public static func - (lhs: UInt16, rhs: Float80) -> UInt16 {
        return lhs - UInt16(rhs)
    }
    
    public static func - (lhs: UInt16, rhs: Double) -> UInt16 {
        return lhs - UInt16(rhs)
    }
    
    public static func - (lhs: UInt16, rhs: Int) -> UInt16 {
        return lhs - UInt16(rhs)
    }
    
    public static func - (lhs: UInt16, rhs: Int8) -> UInt16 {
        return lhs - UInt16(rhs)
    }
    
    public static func - (lhs: UInt16, rhs: Int16) -> UInt16 {
        return lhs - UInt16(rhs)
    }
    
    public static func - (lhs: UInt16, rhs: Int32) -> UInt16 {
        return lhs - UInt16(rhs)
    }
    
    public static func - (lhs: UInt16, rhs: Int64) -> UInt16 {
        return lhs - UInt16(rhs)
    }
    
    public static func - (lhs: UInt16, rhs: UInt) -> UInt16 {
        return lhs - UInt16(rhs)
    }
    
    public static func - (lhs: UInt16, rhs: UInt8) -> UInt16 {
        return lhs - UInt16(rhs)
    }
    
    public static func - (lhs: UInt16, rhs: UInt32) -> UInt16 {
        return lhs - UInt16(rhs)
    }
    
    public static func - (lhs: UInt16, rhs: UInt64) -> UInt16 {
        return lhs - UInt16(rhs)
    }
    
    public static func * (lhs: UInt16, rhs: Any) -> UInt16 {
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
    
    public static func * (lhs: UInt16, rhs: Float) -> UInt16 {
        return lhs * UInt16(rhs)
    }
    
    public static func * (lhs: UInt16, rhs: Float80) -> UInt16 {
        return lhs * UInt16(rhs)
    }
    
    public static func * (lhs: UInt16, rhs: Double) -> UInt16 {
        return lhs * UInt16(rhs)
    }
    
    public static func * (lhs: UInt16, rhs: Int) -> UInt16 {
        return lhs * UInt16(rhs)
    }
    
    public static func * (lhs: UInt16, rhs: Int8) -> UInt16 {
        return lhs * UInt16(rhs)
    }
    
    public static func * (lhs: UInt16, rhs: Int16) -> UInt16 {
        return lhs * UInt16(rhs)
    }
    
    public static func * (lhs: UInt16, rhs: Int32) -> UInt16 {
        return lhs * UInt16(rhs)
    }
    
    public static func * (lhs: UInt16, rhs: Int64) -> UInt16 {
        return lhs * UInt16(rhs)
    }
    
    public static func * (lhs: UInt16, rhs: UInt) -> UInt16 {
        return lhs * UInt16(rhs)
    }
    
    public static func * (lhs: UInt16, rhs: UInt8) -> UInt16 {
        return lhs * UInt16(rhs)
    }
    
    public static func * (lhs: UInt16, rhs: UInt32) -> UInt16 {
        return lhs * UInt16(rhs)
    }
    
    public static func * (lhs: UInt16, rhs: UInt64) -> UInt16 {
        return lhs * UInt16(rhs)
    }
    
    public static func / (lhs: UInt16, rhs: Any) -> UInt16 {
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
    
    public static func / (lhs: UInt16, rhs: Float) -> UInt16 {
        return lhs / UInt16(rhs)
    }
    
    public static func / (lhs: UInt16, rhs: Float80) -> UInt16 {
        return lhs / UInt16(rhs)
    }
    
    public static func / (lhs: UInt16, rhs: Double) -> UInt16 {
        return lhs / UInt16(rhs)
    }
    
    public static func / (lhs: UInt16, rhs: Int) -> UInt16 {
        return lhs / UInt16(rhs)
    }
    
    public static func / (lhs: UInt16, rhs: Int8) -> UInt16 {
        return lhs / UInt16(rhs)
    }
    
    public static func / (lhs: UInt16, rhs: Int16) -> UInt16 {
        return lhs / UInt16(rhs)
    }
    
    public static func / (lhs: UInt16, rhs: Int32) -> UInt16 {
        return lhs / UInt16(rhs)
    }
    
    public static func / (lhs: UInt16, rhs: Int64) -> UInt16 {
        return lhs / UInt16(rhs)
    }
    
    public static func / (lhs: UInt16, rhs: UInt) -> UInt16 {
        return lhs / UInt16(rhs)
    }
    
    public static func / (lhs: UInt16, rhs: UInt8) -> UInt16 {
        return lhs / UInt16(rhs)
    }
    
    public static func / (lhs: UInt16, rhs: UInt32) -> UInt16 {
        return lhs / UInt16(rhs)
    }
    
    public static func / (lhs: UInt16, rhs: UInt64) -> UInt16 {
        return lhs / UInt16(rhs)
    }
    
    public static func += (lhs: inout UInt16, rhs: Any) {
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
    
    public static func += (lhs: inout UInt16, rhs: Float) {
        lhs += UInt16(rhs)
    }
    
    public static func += (lhs: inout UInt16, rhs: Float80) {
        lhs += UInt16(rhs)
    }
    
    public static func += (lhs: inout UInt16, rhs: Double) {
        lhs += UInt16(rhs)
    }
    
    public static func += (lhs: inout UInt16, rhs: Int) {
        lhs += UInt16(rhs)
    }
    
    public static func += (lhs: inout UInt16, rhs: Int8) {
        lhs += UInt16(rhs)
    }
    
    public static func += (lhs: inout UInt16, rhs: Int16) {
        lhs += UInt16(rhs)
    }
    
    public static func += (lhs: inout UInt16, rhs: Int32) {
        lhs += UInt16(rhs)
    }
    
    public static func += (lhs: inout UInt16, rhs: Int64) {
        lhs += UInt16(rhs)
    }
    
    public static func += (lhs: inout UInt16, rhs: UInt) {
        lhs += UInt16(rhs)
    }
    
    public static func += (lhs: inout UInt16, rhs: UInt8) {
        lhs += UInt16(rhs)
    }
    
    public static func += (lhs: inout UInt16, rhs: UInt32) {
        lhs += UInt16(rhs)
    }
    
    public static func += (lhs: inout UInt16, rhs: UInt64) {
        lhs += UInt16(rhs)
    }
}
