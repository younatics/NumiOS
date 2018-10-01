//
//  Int+NumberType.swift
//  NumiOS
//
//  Created by 윤중현 on 01/10/2018.
//  Copyright © 2018 Seungyoun Yi. All rights reserved.
//

extension Int: NumericType {
    
    public static func + (lhs: Int, rhs: Any) -> Int {
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
    
    public static func + (lhs: Int, rhs: Float) -> Int {
        return lhs + Int(rhs)
    }
    
    public static func + (lhs: Int, rhs: Float80) -> Int {
        return lhs + Int(rhs)
    }
    
    public static func + (lhs: Int, rhs: Double) -> Int {
        return lhs + Int(rhs)
    }
    
    public static func + (lhs: Int, rhs: Int8) -> Int {
        return lhs + Int(rhs)
    }
    
    public static func + (lhs: Int, rhs: Int16) -> Int {
        return lhs + Int(rhs)
    }
    
    public static func + (lhs: Int, rhs: Int32) -> Int {
        return lhs + Int(rhs)
    }
    
    public static func + (lhs: Int, rhs: Int64) -> Int {
        return lhs + Int(rhs)
    }
    
    public static func + (lhs: Int, rhs: UInt) -> Int {
        return lhs + Int(rhs)
    }
    
    public static func + (lhs: Int, rhs: UInt8) -> Int {
        return lhs + Int(rhs)
    }
    
    public static func + (lhs: Int, rhs: UInt16) -> Int {
        return lhs + Int(rhs)
    }
    
    public static func + (lhs: Int, rhs: UInt32) -> Int {
        return lhs + Int(rhs)
    }
    
    public static func + (lhs: Int, rhs: UInt64) -> Int {
        return lhs + Int(rhs)
    }
    
    public static func - (lhs: Int, rhs: Any) -> Int {
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
    
    public static func - (lhs: Int, rhs: Float) -> Int {
        return lhs - Int(rhs)
    }
    
    public static func - (lhs: Int, rhs: Float80) -> Int {
        return lhs - Int(rhs)
    }
    
    public static func - (lhs: Int, rhs: Double) -> Int {
        return lhs - Int(rhs)
    }
    
    public static func - (lhs: Int, rhs: Int8) -> Int {
        return lhs - Int(rhs)
    }
    
    public static func - (lhs: Int, rhs: Int16) -> Int {
        return lhs - Int(rhs)
    }
    
    public static func - (lhs: Int, rhs: Int32) -> Int {
        return lhs - Int(rhs)
    }
    
    public static func - (lhs: Int, rhs: Int64) -> Int {
        return lhs - Int(rhs)
    }
    
    public static func - (lhs: Int, rhs: UInt) -> Int {
        return lhs - Int(rhs)
    }
    
    public static func - (lhs: Int, rhs: UInt8) -> Int {
        return lhs - Int(rhs)
    }
    
    public static func - (lhs: Int, rhs: UInt16) -> Int {
        return lhs - Int(rhs)
    }
    
    public static func - (lhs: Int, rhs: UInt32) -> Int {
        return lhs - Int(rhs)
    }
    
    public static func - (lhs: Int, rhs: UInt64) -> Int {
        return lhs - Int(rhs)
    }
    
    public static func * (lhs: Int, rhs: Any) -> Int {
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
    
    public static func * (lhs: Int, rhs: Float) -> Int {
        return lhs * Int(rhs)
    }
    
    public static func * (lhs: Int, rhs: Float80) -> Int {
        return lhs * Int(rhs)
    }
    
    public static func * (lhs: Int, rhs: Double) -> Int {
        return lhs * Int(rhs)
    }
    
    public static func * (lhs: Int, rhs: Int8) -> Int {
        return lhs * Int(rhs)
    }
    
    public static func * (lhs: Int, rhs: Int16) -> Int {
        return lhs * Int(rhs)
    }
    
    public static func * (lhs: Int, rhs: Int32) -> Int {
        return lhs * Int(rhs)
    }
    
    public static func * (lhs: Int, rhs: Int64) -> Int {
        return lhs * Int(rhs)
    }
    
    public static func * (lhs: Int, rhs: UInt) -> Int {
        return lhs * Int(rhs)
    }
    
    public static func * (lhs: Int, rhs: UInt8) -> Int {
        return lhs * Int(rhs)
    }
    
    public static func * (lhs: Int, rhs: UInt16) -> Int {
        return lhs * Int(rhs)
    }
    
    public static func * (lhs: Int, rhs: UInt32) -> Int {
        return lhs * Int(rhs)
    }
    
    public static func * (lhs: Int, rhs: UInt64) -> Int {
        return lhs * Int(rhs)
    }
    
    public static func / (lhs: Int, rhs: Any) -> Int {
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
    
    public static func / (lhs: Int, rhs: Float) -> Int {
        return lhs / Int(rhs)
    }
    
    public static func / (lhs: Int, rhs: Float80) -> Int {
        return lhs / Int(rhs)
    }
    
    public static func / (lhs: Int, rhs: Double) -> Int {
        return lhs / Int(rhs)
    }
    
    public static func / (lhs: Int, rhs: Int8) -> Int {
        return lhs / Int(rhs)
    }
    
    public static func / (lhs: Int, rhs: Int16) -> Int {
        return lhs / Int(rhs)
    }
    
    public static func / (lhs: Int, rhs: Int32) -> Int {
        return lhs / Int(rhs)
    }
    
    public static func / (lhs: Int, rhs: Int64) -> Int {
        return lhs / Int(rhs)
    }
    
    public static func / (lhs: Int, rhs: UInt) -> Int {
        return lhs / Int(rhs)
    }
    
    public static func / (lhs: Int, rhs: UInt8) -> Int {
        return lhs / Int(rhs)
    }
    
    public static func / (lhs: Int, rhs: UInt16) -> Int {
        return lhs / Int(rhs)
    }
    
    public static func / (lhs: Int, rhs: UInt32) -> Int {
        return lhs / Int(rhs)
    }
    
    public static func / (lhs: Int, rhs: UInt64) -> Int {
        return lhs / Int(rhs)
    }
    
    public static func += (lhs: inout Int, rhs: Any) {
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
    
    public static func += (lhs: inout Int, rhs: Float) {
        lhs += Int(rhs)
    }
    
    public static func += (lhs: inout Int, rhs: Float80) {
        lhs += Int(rhs)
    }
    
    public static func += (lhs: inout Int, rhs: Double) {
        lhs += Int(rhs)
    }
    
    public static func += (lhs: inout Int, rhs: Int8) {
        lhs += Int(rhs)
    }
    
    public static func += (lhs: inout Int, rhs: Int16) {
        lhs += Int(rhs)
    }
    
    public static func += (lhs: inout Int, rhs: Int32) {
        lhs += Int(rhs)
    }
    
    public static func += (lhs: inout Int, rhs: Int64) {
        lhs += Int(rhs)
    }
    
    public static func += (lhs: inout Int, rhs: UInt) {
        lhs += Int(rhs)
    }
    
    public static func += (lhs: inout Int, rhs: UInt8) {
        lhs += Int(rhs)
    }
    
    public static func += (lhs: inout Int, rhs: UInt16) {
        lhs += Int(rhs)
    }
    
    public static func += (lhs: inout Int, rhs: UInt32) {
        lhs += Int(rhs)
    }
    
    public static func += (lhs: inout Int, rhs: UInt64) {
        lhs += Int(rhs)
    }
}
