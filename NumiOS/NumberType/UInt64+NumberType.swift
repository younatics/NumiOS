//
//  UInt64+NumberType.swift
//  NumiOS
//
//  Created by 윤중현 on 01/10/2018.
//  Copyright © 2018 Seungyoun Yi. All rights reserved.
//

extension UInt64: NumericType {
    
    public static func + (lhs: UInt64, rhs: Any) -> UInt64 {
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
    
    public static func + (lhs: UInt64, rhs: Float) -> UInt64 {
        return lhs + UInt64(rhs)
    }
    
    public static func + (lhs: UInt64, rhs: Float80) -> UInt64 {
        return lhs + UInt64(rhs)
    }
    
    public static func + (lhs: UInt64, rhs: Double) -> UInt64 {
        return lhs + UInt64(rhs)
    }
    
    public static func + (lhs: UInt64, rhs: Int) -> UInt64 {
        return lhs + UInt64(rhs)
    }
    
    public static func + (lhs: UInt64, rhs: Int8) -> UInt64 {
        return lhs + UInt64(rhs)
    }
    
    public static func + (lhs: UInt64, rhs: Int16) -> UInt64 {
        return lhs + UInt64(rhs)
    }
    
    public static func + (lhs: UInt64, rhs: Int32) -> UInt64 {
        return lhs + UInt64(rhs)
    }
    
    public static func + (lhs: UInt64, rhs: Int64) -> UInt64 {
        return lhs + UInt64(rhs)
    }
    
    public static func + (lhs: UInt64, rhs: UInt) -> UInt64 {
        return lhs + UInt64(rhs)
    }
    
    public static func + (lhs: UInt64, rhs: UInt8) -> UInt64 {
        return lhs + UInt64(rhs)
    }
    
    public static func + (lhs: UInt64, rhs: UInt16) -> UInt64 {
        return lhs + UInt64(rhs)
    }
    
    public static func + (lhs: UInt64, rhs: UInt32) -> UInt64 {
        return lhs + UInt64(rhs)
    }
    
    public static func - (lhs: UInt64, rhs: Any) -> UInt64 {
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
    
    public static func - (lhs: UInt64, rhs: Float) -> UInt64 {
        return lhs - UInt64(rhs)
    }
    
    public static func - (lhs: UInt64, rhs: Float80) -> UInt64 {
        return lhs - UInt64(rhs)
    }
    
    public static func - (lhs: UInt64, rhs: Double) -> UInt64 {
        return lhs - UInt64(rhs)
    }
    
    public static func - (lhs: UInt64, rhs: Int) -> UInt64 {
        return lhs - UInt64(rhs)
    }
    
    public static func - (lhs: UInt64, rhs: Int8) -> UInt64 {
        return lhs - UInt64(rhs)
    }
    
    public static func - (lhs: UInt64, rhs: Int16) -> UInt64 {
        return lhs - UInt64(rhs)
    }
    
    public static func - (lhs: UInt64, rhs: Int32) -> UInt64 {
        return lhs - UInt64(rhs)
    }
    
    public static func - (lhs: UInt64, rhs: Int64) -> UInt64 {
        return lhs - UInt64(rhs)
    }
    
    public static func - (lhs: UInt64, rhs: UInt) -> UInt64 {
        return lhs - UInt64(rhs)
    }
    
    public static func - (lhs: UInt64, rhs: UInt8) -> UInt64 {
        return lhs - UInt64(rhs)
    }
    
    public static func - (lhs: UInt64, rhs: UInt16) -> UInt64 {
        return lhs - UInt64(rhs)
    }
    
    public static func - (lhs: UInt64, rhs: UInt32) -> UInt64 {
        return lhs - UInt64(rhs)
    }
    
    public static func * (lhs: UInt64, rhs: Any) -> UInt64 {
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
    
    public static func * (lhs: UInt64, rhs: Float) -> UInt64 {
        return lhs * UInt64(rhs)
    }
    
    public static func * (lhs: UInt64, rhs: Float80) -> UInt64 {
        return lhs * UInt64(rhs)
    }
    
    public static func * (lhs: UInt64, rhs: Double) -> UInt64 {
        return lhs * UInt64(rhs)
    }
    
    public static func * (lhs: UInt64, rhs: Int) -> UInt64 {
        return lhs * UInt64(rhs)
    }
    
    public static func * (lhs: UInt64, rhs: Int8) -> UInt64 {
        return lhs * UInt64(rhs)
    }
    
    public static func * (lhs: UInt64, rhs: Int16) -> UInt64 {
        return lhs * UInt64(rhs)
    }
    
    public static func * (lhs: UInt64, rhs: Int32) -> UInt64 {
        return lhs * UInt64(rhs)
    }
    
    public static func * (lhs: UInt64, rhs: Int64) -> UInt64 {
        return lhs * UInt64(rhs)
    }
    
    public static func * (lhs: UInt64, rhs: UInt) -> UInt64 {
        return lhs * UInt64(rhs)
    }
    
    public static func * (lhs: UInt64, rhs: UInt8) -> UInt64 {
        return lhs * UInt64(rhs)
    }
    
    public static func * (lhs: UInt64, rhs: UInt16) -> UInt64 {
        return lhs * UInt64(rhs)
    }
    
    public static func * (lhs: UInt64, rhs: UInt32) -> UInt64 {
        return lhs * UInt64(rhs)
    }
    
    public static func / (lhs: UInt64, rhs: Any) -> UInt64 {
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
    
    public static func / (lhs: UInt64, rhs: Float) -> UInt64 {
        return lhs / UInt64(rhs)
    }
    
    public static func / (lhs: UInt64, rhs: Float80) -> UInt64 {
        return lhs / UInt64(rhs)
    }
    
    public static func / (lhs: UInt64, rhs: Double) -> UInt64 {
        return lhs / UInt64(rhs)
    }
    
    public static func / (lhs: UInt64, rhs: Int) -> UInt64 {
        return lhs / UInt64(rhs)
    }
    
    public static func / (lhs: UInt64, rhs: Int8) -> UInt64 {
        return lhs / UInt64(rhs)
    }
    
    public static func / (lhs: UInt64, rhs: Int16) -> UInt64 {
        return lhs / UInt64(rhs)
    }
    
    public static func / (lhs: UInt64, rhs: Int32) -> UInt64 {
        return lhs / UInt64(rhs)
    }
    
    public static func / (lhs: UInt64, rhs: Int64) -> UInt64 {
        return lhs / UInt64(rhs)
    }
    
    public static func / (lhs: UInt64, rhs: UInt) -> UInt64 {
        return lhs / UInt64(rhs)
    }
    
    public static func / (lhs: UInt64, rhs: UInt8) -> UInt64 {
        return lhs / UInt64(rhs)
    }
    
    public static func / (lhs: UInt64, rhs: UInt16) -> UInt64 {
        return lhs / UInt64(rhs)
    }
    
    public static func / (lhs: UInt64, rhs: UInt32) -> UInt64 {
        return lhs / UInt64(rhs)
    }
    
    public static func += (lhs: inout UInt64, rhs: Any) {
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
    
    public static func += (lhs: inout UInt64, rhs: Float) {
        lhs += UInt64(rhs)
    }
    
    public static func += (lhs: inout UInt64, rhs: Float80) {
        lhs += UInt64(rhs)
    }
    
    public static func += (lhs: inout UInt64, rhs: Double) {
        lhs += UInt64(rhs)
    }
    
    public static func += (lhs: inout UInt64, rhs: Int) {
        lhs += UInt64(rhs)
    }
    
    public static func += (lhs: inout UInt64, rhs: Int8) {
        lhs += UInt64(rhs)
    }
    
    public static func += (lhs: inout UInt64, rhs: Int16) {
        lhs += UInt64(rhs)
    }
    
    public static func += (lhs: inout UInt64, rhs: Int32) {
        lhs += UInt64(rhs)
    }
    
    public static func += (lhs: inout UInt64, rhs: Int64) {
        lhs += UInt64(rhs)
    }
    
    public static func += (lhs: inout UInt64, rhs: UInt) {
        lhs += UInt64(rhs)
    }
    
    public static func += (lhs: inout UInt64, rhs: UInt8) {
        lhs += UInt64(rhs)
    }
    
    public static func += (lhs: inout UInt64, rhs: UInt16) {
        lhs += UInt64(rhs)
    }
    
    public static func += (lhs: inout UInt64, rhs: UInt32) {
        lhs += UInt64(rhs)
    }
}
