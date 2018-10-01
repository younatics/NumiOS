//
//  Int64+NumberType.swift
//  NumiOS
//
//  Created by 윤중현 on 01/10/2018.
//  Copyright © 2018 Seungyoun Yi. All rights reserved.
//

extension Int64: NumericType {
    
    public static func + (lhs: Int64, rhs: Any) -> Int64 {
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
    
    public static func + (lhs: Int64, rhs: Float) -> Int64 {
        return lhs + Int64(rhs)
    }
    
    public static func + (lhs: Int64, rhs: Float80) -> Int64 {
        return lhs + Int64(rhs)
    }
    
    public static func + (lhs: Int64, rhs: Double) -> Int64 {
        return lhs + Int64(rhs)
    }
    
    public static func + (lhs: Int64, rhs: Int) -> Int64 {
        return lhs + Int64(rhs)
    }
    
    public static func + (lhs: Int64, rhs: Int8) -> Int64 {
        return lhs + Int64(rhs)
    }
    
    public static func + (lhs: Int64, rhs: Int16) -> Int64 {
        return lhs + Int64(rhs)
    }
    
    public static func + (lhs: Int64, rhs: Int32) -> Int64 {
        return lhs + Int64(rhs)
    }
    
    public static func + (lhs: Int64, rhs: UInt) -> Int64 {
        return lhs + Int64(rhs)
    }
    
    public static func + (lhs: Int64, rhs: UInt8) -> Int64 {
        return lhs + Int64(rhs)
    }
    
    public static func + (lhs: Int64, rhs: UInt16) -> Int64 {
        return lhs + Int64(rhs)
    }
    
    public static func + (lhs: Int64, rhs: UInt32) -> Int64 {
        return lhs + Int64(rhs)
    }
    
    public static func + (lhs: Int64, rhs: UInt64) -> Int64 {
        return lhs + Int64(rhs)
    }
    
    public static func - (lhs: Int64, rhs: Any) -> Int64 {
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
    
    public static func - (lhs: Int64, rhs: Float) -> Int64 {
        return lhs - Int64(rhs)
    }
    
    public static func - (lhs: Int64, rhs: Float80) -> Int64 {
        return lhs - Int64(rhs)
    }
    
    public static func - (lhs: Int64, rhs: Double) -> Int64 {
        return lhs - Int64(rhs)
    }
    
    public static func - (lhs: Int64, rhs: Int) -> Int64 {
        return lhs - Int64(rhs)
    }
    
    public static func - (lhs: Int64, rhs: Int8) -> Int64 {
        return lhs - Int64(rhs)
    }
    
    public static func - (lhs: Int64, rhs: Int16) -> Int64 {
        return lhs - Int64(rhs)
    }
    
    public static func - (lhs: Int64, rhs: Int32) -> Int64 {
        return lhs - Int64(rhs)
    }
    
    public static func - (lhs: Int64, rhs: UInt) -> Int64 {
        return lhs - Int64(rhs)
    }
    
    public static func - (lhs: Int64, rhs: UInt8) -> Int64 {
        return lhs - Int64(rhs)
    }
    
    public static func - (lhs: Int64, rhs: UInt16) -> Int64 {
        return lhs - Int64(rhs)
    }
    
    public static func - (lhs: Int64, rhs: UInt32) -> Int64 {
        return lhs - Int64(rhs)
    }
    
    public static func - (lhs: Int64, rhs: UInt64) -> Int64 {
        return lhs - Int64(rhs)
    }
    
    public static func * (lhs: Int64, rhs: Any) -> Int64 {
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
    
    public static func * (lhs: Int64, rhs: Float) -> Int64 {
        return lhs * Int64(rhs)
    }
    
    public static func * (lhs: Int64, rhs: Float80) -> Int64 {
        return lhs * Int64(rhs)
    }
    
    public static func * (lhs: Int64, rhs: Double) -> Int64 {
        return lhs * Int64(rhs)
    }
    
    public static func * (lhs: Int64, rhs: Int) -> Int64 {
        return lhs * Int64(rhs)
    }
    
    public static func * (lhs: Int64, rhs: Int8) -> Int64 {
        return lhs * Int64(rhs)
    }
    
    public static func * (lhs: Int64, rhs: Int16) -> Int64 {
        return lhs * Int64(rhs)
    }
    
    public static func * (lhs: Int64, rhs: Int32) -> Int64 {
        return lhs * Int64(rhs)
    }
    
    public static func * (lhs: Int64, rhs: UInt) -> Int64 {
        return lhs * Int64(rhs)
    }
    
    public static func * (lhs: Int64, rhs: UInt8) -> Int64 {
        return lhs * Int64(rhs)
    }
    
    public static func * (lhs: Int64, rhs: UInt16) -> Int64 {
        return lhs * Int64(rhs)
    }
    
    public static func * (lhs: Int64, rhs: UInt32) -> Int64 {
        return lhs * Int64(rhs)
    }
    
    public static func * (lhs: Int64, rhs: UInt64) -> Int64 {
        return lhs * Int64(rhs)
    }
    
    public static func / (lhs: Int64, rhs: Any) -> Int64 {
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
    
    public static func / (lhs: Int64, rhs: Float) -> Int64 {
        return lhs / Int64(rhs)
    }
    
    public static func / (lhs: Int64, rhs: Float80) -> Int64 {
        return lhs / Int64(rhs)
    }
    
    public static func / (lhs: Int64, rhs: Double) -> Int64 {
        return lhs / Int64(rhs)
    }
    
    public static func / (lhs: Int64, rhs: Int) -> Int64 {
        return lhs / Int64(rhs)
    }
    
    public static func / (lhs: Int64, rhs: Int8) -> Int64 {
        return lhs / Int64(rhs)
    }
    
    public static func / (lhs: Int64, rhs: Int16) -> Int64 {
        return lhs / Int64(rhs)
    }
    
    public static func / (lhs: Int64, rhs: Int32) -> Int64 {
        return lhs / Int64(rhs)
    }
    
    public static func / (lhs: Int64, rhs: UInt) -> Int64 {
        return lhs / Int64(rhs)
    }
    
    public static func / (lhs: Int64, rhs: UInt8) -> Int64 {
        return lhs / Int64(rhs)
    }
    
    public static func / (lhs: Int64, rhs: UInt16) -> Int64 {
        return lhs / Int64(rhs)
    }
    
    public static func / (lhs: Int64, rhs: UInt32) -> Int64 {
        return lhs / Int64(rhs)
    }
    
    public static func / (lhs: Int64, rhs: UInt64) -> Int64 {
        return lhs / Int64(rhs)
    }
    
    public static func += (lhs: inout Int64, rhs: Any) {
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
    
    public static func += (lhs: inout Int64, rhs: Float) {
        lhs += Int64(rhs)
    }
    
    public static func += (lhs: inout Int64, rhs: Float80) {
        lhs += Int64(rhs)
    }
    
    public static func += (lhs: inout Int64, rhs: Double) {
        lhs += Int64(rhs)
    }
    
    public static func += (lhs: inout Int64, rhs: Int) {
        lhs += Int64(rhs)
    }
    
    public static func += (lhs: inout Int64, rhs: Int8) {
        lhs += Int64(rhs)
    }
    
    public static func += (lhs: inout Int64, rhs: Int16) {
        lhs += Int64(rhs)
    }
    
    public static func += (lhs: inout Int64, rhs: Int32) {
        lhs += Int64(rhs)
    }
    
    public static func += (lhs: inout Int64, rhs: UInt) {
        lhs += Int64(rhs)
    }
    
    public static func += (lhs: inout Int64, rhs: UInt8) {
        lhs += Int64(rhs)
    }
    
    public static func += (lhs: inout Int64, rhs: UInt16) {
        lhs += Int64(rhs)
    }
    
    public static func += (lhs: inout Int64, rhs: UInt32) {
        lhs += Int64(rhs)
    }
    
    public static func += (lhs: inout Int64, rhs: UInt64) {
        lhs += Int64(rhs)
    }
}
