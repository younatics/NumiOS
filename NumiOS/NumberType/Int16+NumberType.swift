//
//  Int16+NumberType.swift
//  NumiOS
//
//  Created by 윤중현 on 01/10/2018.
//  Copyright © 2018 Seungyoun Yi. All rights reserved.
//

extension Int16: NumericType {
    
    public static func + (lhs: Int16, rhs: Any) -> Int16 {
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
    
    public static func + (lhs: Int16, rhs: Float) -> Int16 {
        return lhs + Int16(rhs)
    }
    
    public static func + (lhs: Int16, rhs: Float80) -> Int16 {
        return lhs + Int16(rhs)
    }
    
    public static func + (lhs: Int16, rhs: Double) -> Int16 {
        return lhs + Int16(rhs)
    }
    
    public static func + (lhs: Int16, rhs: Int) -> Int16 {
        return lhs + Int16(rhs)
    }
    
    public static func + (lhs: Int16, rhs: Int8) -> Int16 {
        return lhs + Int16(rhs)
    }
    
    public static func + (lhs: Int16, rhs: Int32) -> Int16 {
        return lhs + Int16(rhs)
    }
    
    public static func + (lhs: Int16, rhs: Int64) -> Int16 {
        return lhs + Int16(rhs)
    }
    
    public static func + (lhs: Int16, rhs: UInt) -> Int16 {
        return lhs + Int16(rhs)
    }
    
    public static func + (lhs: Int16, rhs: UInt8) -> Int16 {
        return lhs + Int16(rhs)
    }
    
    public static func + (lhs: Int16, rhs: UInt16) -> Int16 {
        return lhs + Int16(rhs)
    }
    
    public static func + (lhs: Int16, rhs: UInt32) -> Int16 {
        return lhs + Int16(rhs)
    }
    
    public static func + (lhs: Int16, rhs: UInt64) -> Int16 {
        return lhs + Int16(rhs)
    }
    
    public static func - (lhs: Int16, rhs: Any) -> Int16 {
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
    
    public static func - (lhs: Int16, rhs: Float) -> Int16 {
        return lhs - Int16(rhs)
    }
    
    public static func - (lhs: Int16, rhs: Float80) -> Int16 {
        return lhs - Int16(rhs)
    }
    
    public static func - (lhs: Int16, rhs: Double) -> Int16 {
        return lhs - Int16(rhs)
    }
    
    public static func - (lhs: Int16, rhs: Int) -> Int16 {
        return lhs - Int16(rhs)
    }
    
    public static func - (lhs: Int16, rhs: Int8) -> Int16 {
        return lhs - Int16(rhs)
    }
    
    public static func - (lhs: Int16, rhs: Int32) -> Int16 {
        return lhs - Int16(rhs)
    }
    
    public static func - (lhs: Int16, rhs: Int64) -> Int16 {
        return lhs - Int16(rhs)
    }
    
    public static func - (lhs: Int16, rhs: UInt) -> Int16 {
        return lhs - Int16(rhs)
    }
    
    public static func - (lhs: Int16, rhs: UInt8) -> Int16 {
        return lhs - Int16(rhs)
    }
    
    public static func - (lhs: Int16, rhs: UInt16) -> Int16 {
        return lhs - Int16(rhs)
    }
    
    public static func - (lhs: Int16, rhs: UInt32) -> Int16 {
        return lhs - Int16(rhs)
    }
    
    public static func - (lhs: Int16, rhs: UInt64) -> Int16 {
        return lhs - Int16(rhs)
    }
    
    public static func * (lhs: Int16, rhs: Any) -> Int16 {
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
    
    public static func * (lhs: Int16, rhs: Float) -> Int16 {
        return lhs * Int16(rhs)
    }
    
    public static func * (lhs: Int16, rhs: Float80) -> Int16 {
        return lhs * Int16(rhs)
    }
    
    public static func * (lhs: Int16, rhs: Double) -> Int16 {
        return lhs * Int16(rhs)
    }
    
    public static func * (lhs: Int16, rhs: Int) -> Int16 {
        return lhs * Int16(rhs)
    }
    
    public static func * (lhs: Int16, rhs: Int8) -> Int16 {
        return lhs * Int16(rhs)
    }
    
    public static func * (lhs: Int16, rhs: Int32) -> Int16 {
        return lhs * Int16(rhs)
    }
    
    public static func * (lhs: Int16, rhs: Int64) -> Int16 {
        return lhs * Int16(rhs)
    }
    
    public static func * (lhs: Int16, rhs: UInt) -> Int16 {
        return lhs * Int16(rhs)
    }
    
    public static func * (lhs: Int16, rhs: UInt8) -> Int16 {
        return lhs * Int16(rhs)
    }
    
    public static func * (lhs: Int16, rhs: UInt16) -> Int16 {
        return lhs * Int16(rhs)
    }
    
    public static func * (lhs: Int16, rhs: UInt32) -> Int16 {
        return lhs * Int16(rhs)
    }
    
    public static func * (lhs: Int16, rhs: UInt64) -> Int16 {
        return lhs * Int16(rhs)
    }
    
    public static func / (lhs: Int16, rhs: Any) -> Int16 {
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
    
    public static func / (lhs: Int16, rhs: Float) -> Int16 {
        return lhs / Int16(rhs)
    }
    
    public static func / (lhs: Int16, rhs: Float80) -> Int16 {
        return lhs / Int16(rhs)
    }
    
    public static func / (lhs: Int16, rhs: Double) -> Int16 {
        return lhs / Int16(rhs)
    }
    
    public static func / (lhs: Int16, rhs: Int) -> Int16 {
        return lhs / Int16(rhs)
    }
    
    public static func / (lhs: Int16, rhs: Int8) -> Int16 {
        return lhs / Int16(rhs)
    }
    
    public static func / (lhs: Int16, rhs: Int32) -> Int16 {
        return lhs / Int16(rhs)
    }
    
    public static func / (lhs: Int16, rhs: Int64) -> Int16 {
        return lhs / Int16(rhs)
    }
    
    public static func / (lhs: Int16, rhs: UInt) -> Int16 {
        return lhs / Int16(rhs)
    }
    
    public static func / (lhs: Int16, rhs: UInt8) -> Int16 {
        return lhs / Int16(rhs)
    }
    
    public static func / (lhs: Int16, rhs: UInt16) -> Int16 {
        return lhs / Int16(rhs)
    }
    
    public static func / (lhs: Int16, rhs: UInt32) -> Int16 {
        return lhs / Int16(rhs)
    }
    
    public static func / (lhs: Int16, rhs: UInt64) -> Int16 {
        return lhs / Int16(rhs)
    }
    
    public static func += (lhs: inout Int16, rhs: Any) {
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
    
    public static func += (lhs: inout Int16, rhs: Float) {
        lhs += Int16(rhs)
    }
    
    public static func += (lhs: inout Int16, rhs: Float80) {
        lhs += Int16(rhs)
    }
    
    public static func += (lhs: inout Int16, rhs: Double) {
        lhs += Int16(rhs)
    }
    
    public static func += (lhs: inout Int16, rhs: Int) {
        lhs += Int16(rhs)
    }
    
    public static func += (lhs: inout Int16, rhs: Int8) {
        lhs += Int16(rhs)
    }
    
    public static func += (lhs: inout Int16, rhs: Int32) {
        lhs += Int16(rhs)
    }
    
    public static func += (lhs: inout Int16, rhs: Int64) {
        lhs += Int16(rhs)
    }
    
    public static func += (lhs: inout Int16, rhs: UInt) {
        lhs += Int16(rhs)
    }
    
    public static func += (lhs: inout Int16, rhs: UInt8) {
        lhs += Int16(rhs)
    }
    
    public static func += (lhs: inout Int16, rhs: UInt16) {
        lhs += Int16(rhs)
    }
    
    public static func += (lhs: inout Int16, rhs: UInt32) {
        lhs += Int16(rhs)
    }
    
    public static func += (lhs: inout Int16, rhs: UInt64) {
        lhs += Int16(rhs)
    }
}
