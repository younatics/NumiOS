//
//  UInt32+NumberType.swift
//  NumiOS
//
//  Created by 윤중현 on 01/10/2018.
//  Copyright © 2018 Seungyoun Yi. All rights reserved.
//

extension UInt32: NumericType {
    
    public static func + (lhs: UInt32, rhs: Any) -> UInt32 {
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
    
    public static func + (lhs: UInt32, rhs: Float) -> UInt32 {
        return lhs + UInt32(rhs)
    }
    
    public static func + (lhs: UInt32, rhs: Float80) -> UInt32 {
        return lhs + UInt32(rhs)
    }
    
    public static func + (lhs: UInt32, rhs: Double) -> UInt32 {
        return lhs + UInt32(rhs)
    }
    
    public static func + (lhs: UInt32, rhs: Int) -> UInt32 {
        return lhs + UInt32(rhs)
    }
    
    public static func + (lhs: UInt32, rhs: Int8) -> UInt32 {
        return lhs + UInt32(rhs)
    }
    
    public static func + (lhs: UInt32, rhs: Int16) -> UInt32 {
        return lhs + UInt32(rhs)
    }
    
    public static func + (lhs: UInt32, rhs: Int32) -> UInt32 {
        return lhs + UInt32(rhs)
    }
    
    public static func + (lhs: UInt32, rhs: Int64) -> UInt32 {
        return lhs + UInt32(rhs)
    }
    
    public static func + (lhs: UInt32, rhs: UInt) -> UInt32 {
        return lhs + UInt32(rhs)
    }
    
    public static func + (lhs: UInt32, rhs: UInt8) -> UInt32 {
        return lhs + UInt32(rhs)
    }
    
    public static func + (lhs: UInt32, rhs: UInt16) -> UInt32 {
        return lhs + UInt32(rhs)
    }
    
    public static func + (lhs: UInt32, rhs: UInt64) -> UInt32 {
        return lhs + UInt32(rhs)
    }
    
    public static func - (lhs: UInt32, rhs: Any) -> UInt32 {
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
    
    public static func - (lhs: UInt32, rhs: Float) -> UInt32 {
        return lhs - UInt32(rhs)
    }
    
    public static func - (lhs: UInt32, rhs: Float80) -> UInt32 {
        return lhs - UInt32(rhs)
    }
    
    public static func - (lhs: UInt32, rhs: Double) -> UInt32 {
        return lhs - UInt32(rhs)
    }
    
    public static func - (lhs: UInt32, rhs: Int) -> UInt32 {
        return lhs - UInt32(rhs)
    }
    
    public static func - (lhs: UInt32, rhs: Int8) -> UInt32 {
        return lhs - UInt32(rhs)
    }
    
    public static func - (lhs: UInt32, rhs: Int16) -> UInt32 {
        return lhs - UInt32(rhs)
    }
    
    public static func - (lhs: UInt32, rhs: Int32) -> UInt32 {
        return lhs - UInt32(rhs)
    }
    
    public static func - (lhs: UInt32, rhs: Int64) -> UInt32 {
        return lhs - UInt32(rhs)
    }
    
    public static func - (lhs: UInt32, rhs: UInt) -> UInt32 {
        return lhs - UInt32(rhs)
    }
    
    public static func - (lhs: UInt32, rhs: UInt8) -> UInt32 {
        return lhs - UInt32(rhs)
    }
    
    public static func - (lhs: UInt32, rhs: UInt16) -> UInt32 {
        return lhs - UInt32(rhs)
    }
    
    public static func - (lhs: UInt32, rhs: UInt64) -> UInt32 {
        return lhs - UInt32(rhs)
    }
    
    public static func * (lhs: UInt32, rhs: Any) -> UInt32 {
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
    
    public static func * (lhs: UInt32, rhs: Float) -> UInt32 {
        return lhs * UInt32(rhs)
    }
    
    public static func * (lhs: UInt32, rhs: Float80) -> UInt32 {
        return lhs * UInt32(rhs)
    }
    
    public static func * (lhs: UInt32, rhs: Double) -> UInt32 {
        return lhs * UInt32(rhs)
    }
    
    public static func * (lhs: UInt32, rhs: Int) -> UInt32 {
        return lhs * UInt32(rhs)
    }
    
    public static func * (lhs: UInt32, rhs: Int8) -> UInt32 {
        return lhs * UInt32(rhs)
    }
    
    public static func * (lhs: UInt32, rhs: Int16) -> UInt32 {
        return lhs * UInt32(rhs)
    }
    
    public static func * (lhs: UInt32, rhs: Int32) -> UInt32 {
        return lhs * UInt32(rhs)
    }
    
    public static func * (lhs: UInt32, rhs: Int64) -> UInt32 {
        return lhs * UInt32(rhs)
    }
    
    public static func * (lhs: UInt32, rhs: UInt) -> UInt32 {
        return lhs * UInt32(rhs)
    }
    
    public static func * (lhs: UInt32, rhs: UInt8) -> UInt32 {
        return lhs * UInt32(rhs)
    }
    
    public static func * (lhs: UInt32, rhs: UInt16) -> UInt32 {
        return lhs * UInt32(rhs)
    }
    
    public static func * (lhs: UInt32, rhs: UInt64) -> UInt32 {
        return lhs * UInt32(rhs)
    }
    
    public static func / (lhs: UInt32, rhs: Any) -> UInt32 {
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
    
    public static func / (lhs: UInt32, rhs: Float) -> UInt32 {
        return lhs / UInt32(rhs)
    }
    
    public static func / (lhs: UInt32, rhs: Float80) -> UInt32 {
        return lhs / UInt32(rhs)
    }
    
    public static func / (lhs: UInt32, rhs: Double) -> UInt32 {
        return lhs / UInt32(rhs)
    }
    
    public static func / (lhs: UInt32, rhs: Int) -> UInt32 {
        return lhs / UInt32(rhs)
    }
    
    public static func / (lhs: UInt32, rhs: Int8) -> UInt32 {
        return lhs / UInt32(rhs)
    }
    
    public static func / (lhs: UInt32, rhs: Int16) -> UInt32 {
        return lhs / UInt32(rhs)
    }
    
    public static func / (lhs: UInt32, rhs: Int32) -> UInt32 {
        return lhs / UInt32(rhs)
    }
    
    public static func / (lhs: UInt32, rhs: Int64) -> UInt32 {
        return lhs / UInt32(rhs)
    }
    
    public static func / (lhs: UInt32, rhs: UInt) -> UInt32 {
        return lhs / UInt32(rhs)
    }
    
    public static func / (lhs: UInt32, rhs: UInt8) -> UInt32 {
        return lhs / UInt32(rhs)
    }
    
    public static func / (lhs: UInt32, rhs: UInt16) -> UInt32 {
        return lhs / UInt32(rhs)
    }
    
    public static func / (lhs: UInt32, rhs: UInt64) -> UInt32 {
        return lhs / UInt32(rhs)
    }
    
    public static func += (lhs: inout UInt32, rhs: Any) {
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
    
    public static func += (lhs: inout UInt32, rhs: Float) {
        lhs += UInt32(rhs)
    }
    
    public static func += (lhs: inout UInt32, rhs: Float80) {
        lhs += UInt32(rhs)
    }
    
    public static func += (lhs: inout UInt32, rhs: Double) {
        lhs += UInt32(rhs)
    }
    
    public static func += (lhs: inout UInt32, rhs: Int) {
        lhs += UInt32(rhs)
    }
    
    public static func += (lhs: inout UInt32, rhs: Int8) {
        lhs += UInt32(rhs)
    }
    
    public static func += (lhs: inout UInt32, rhs: Int16) {
        lhs += UInt32(rhs)
    }
    
    public static func += (lhs: inout UInt32, rhs: Int32) {
        lhs += UInt32(rhs)
    }
    
    public static func += (lhs: inout UInt32, rhs: Int64) {
        lhs += UInt32(rhs)
    }
    
    public static func += (lhs: inout UInt32, rhs: UInt) {
        lhs += UInt32(rhs)
    }
    
    public static func += (lhs: inout UInt32, rhs: UInt8) {
        lhs += UInt32(rhs)
    }
    
    public static func += (lhs: inout UInt32, rhs: UInt16) {
        lhs += UInt32(rhs)
    }
    
    public static func += (lhs: inout UInt32, rhs: UInt64) {
        lhs += UInt32(rhs)
    }
}
