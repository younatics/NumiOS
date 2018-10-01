//
//  Double+NumberType.swift
//  NumiOS
//
//  Created by 윤중현 on 01/10/2018.
//  Copyright © 2018 Seungyoun Yi. All rights reserved.
//

extension Double: NumericType {
    
    public static func + (lhs: Double, rhs: Any) -> Double {
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
        default: fatalError("rhs should be Double type")
        }
    }
    
    public static func + (lhs: Double, rhs: Float) -> Double {
        return lhs + Double(rhs)
    }
    
    public static func + (lhs: Double, rhs: Float80) -> Double {
        return lhs + Double(rhs)
    }
    
    public static func + (lhs: Double, rhs: Int) -> Double {
        return lhs + Double(rhs)
    }
    
    public static func + (lhs: Double, rhs: Int8) -> Double {
        return lhs + Double(rhs)
    }
    
    public static func + (lhs: Double, rhs: Int16) -> Double {
        return lhs + Double(rhs)
    }
    
    public static func + (lhs: Double, rhs: Int32) -> Double {
        return lhs + Double(rhs)
    }
    
    public static func + (lhs: Double, rhs: Int64) -> Double {
        return lhs + Double(rhs)
    }
    
    public static func + (lhs: Double, rhs: UInt) -> Double {
        return lhs + Double(rhs)
    }
    
    public static func + (lhs: Double, rhs: UInt8) -> Double {
        return lhs + Double(rhs)
    }
    
    public static func + (lhs: Double, rhs: UInt16) -> Double {
        return lhs + Double(rhs)
    }
    
    public static func + (lhs: Double, rhs: UInt32) -> Double {
        return lhs + Double(rhs)
    }
    
    public static func + (lhs: Double, rhs: UInt64) -> Double {
        return lhs + Double(rhs)
    }
    
    public static func - (lhs: Double, rhs: Any) -> Double {
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
    
    public static func - (lhs: Double, rhs: Float) -> Double {
        return lhs - Double(rhs)
    }
    
    public static func - (lhs: Double, rhs: Float80) -> Double {
        return lhs - Double(rhs)
    }
    
    public static func - (lhs: Double, rhs: Int) -> Double {
        return lhs - Double(rhs)
    }
    
    public static func - (lhs: Double, rhs: Int8) -> Double {
        return lhs - Double(rhs)
    }
    
    public static func - (lhs: Double, rhs: Int16) -> Double {
        return lhs - Double(rhs)
    }
    
    public static func - (lhs: Double, rhs: Int32) -> Double {
        return lhs - Double(rhs)
    }
    
    public static func - (lhs: Double, rhs: Int64) -> Double {
        return lhs - Double(rhs)
    }
    
    public static func - (lhs: Double, rhs: UInt) -> Double {
        return lhs - Double(rhs)
    }
    
    public static func - (lhs: Double, rhs: UInt8) -> Double {
        return lhs - Double(rhs)
    }
    
    public static func - (lhs: Double, rhs: UInt16) -> Double {
        return lhs - Double(rhs)
    }
    
    public static func - (lhs: Double, rhs: UInt32) -> Double {
        return lhs - Double(rhs)
    }
    
    public static func - (lhs: Double, rhs: UInt64) -> Double {
        return lhs - Double(rhs)
    }
    
    public static func * (lhs: Double, rhs: Any) -> Double {
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
    
    public static func * (lhs: Double, rhs: Float) -> Double {
        return lhs * Double(rhs)
    }
    
    public static func * (lhs: Double, rhs: Float80) -> Double {
        return lhs * Double(rhs)
    }
    
    public static func * (lhs: Double, rhs: Int) -> Double {
        return lhs * Double(rhs)
    }
    
    public static func * (lhs: Double, rhs: Int8) -> Double {
        return lhs * Double(rhs)
    }
    
    public static func * (lhs: Double, rhs: Int16) -> Double {
        return lhs * Double(rhs)
    }
    
    public static func * (lhs: Double, rhs: Int32) -> Double {
        return lhs * Double(rhs)
    }
    
    public static func * (lhs: Double, rhs: Int64) -> Double {
        return lhs * Double(rhs)
    }
    
    public static func * (lhs: Double, rhs: UInt) -> Double {
        return lhs * Double(rhs)
    }
    
    public static func * (lhs: Double, rhs: UInt8) -> Double {
        return lhs * Double(rhs)
    }
    
    public static func * (lhs: Double, rhs: UInt16) -> Double {
        return lhs * Double(rhs)
    }
    
    public static func * (lhs: Double, rhs: UInt32) -> Double {
        return lhs * Double(rhs)
    }
    
    public static func * (lhs: Double, rhs: UInt64) -> Double {
        return lhs * Double(rhs)
    }
    
    public static func / (lhs: Double, rhs: Any) -> Double {
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
    
    public static func / (lhs: Double, rhs: Float) -> Double {
        return lhs / Double(rhs)
    }
    
    public static func / (lhs: Double, rhs: Float80) -> Double {
        return lhs / Double(rhs)
    }
    
    public static func / (lhs: Double, rhs: Int) -> Double {
        return lhs / Double(rhs)
    }
    
    public static func / (lhs: Double, rhs: Int8) -> Double {
        return lhs / Double(rhs)
    }
    
    public static func / (lhs: Double, rhs: Int16) -> Double {
        return lhs / Double(rhs)
    }
    
    public static func / (lhs: Double, rhs: Int32) -> Double {
        return lhs / Double(rhs)
    }
    
    public static func / (lhs: Double, rhs: Int64) -> Double {
        return lhs / Double(rhs)
    }
    
    public static func / (lhs: Double, rhs: UInt) -> Double {
        return lhs / Double(rhs)
    }
    
    public static func / (lhs: Double, rhs: UInt8) -> Double {
        return lhs / Double(rhs)
    }
    
    public static func / (lhs: Double, rhs: UInt16) -> Double {
        return lhs / Double(rhs)
    }
    
    public static func / (lhs: Double, rhs: UInt32) -> Double {
        return lhs / Double(rhs)
    }
    
    public static func / (lhs: Double, rhs: UInt64) -> Double {
        return lhs / Double(rhs)
    }
    
    public static func += (lhs: inout Double, rhs: Any) {
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
    
    public static func += (lhs: inout Double, rhs: Float) {
        lhs += Double(rhs)
    }
    
    public static func += (lhs: inout Double, rhs: Float80) {
        lhs += Double(rhs)
    }
    
    public static func += (lhs: inout Double, rhs: Int) {
        lhs += Double(rhs)
    }
    
    public static func += (lhs: inout Double, rhs: Int8) {
        lhs += Double(rhs)
    }
    
    public static func += (lhs: inout Double, rhs: Int16) {
        lhs += Double(rhs)
    }
    
    public static func += (lhs: inout Double, rhs: Int32) {
        lhs += Double(rhs)
    }
    
    public static func += (lhs: inout Double, rhs: Int64) {
        lhs += Double(rhs)
    }
    
    public static func += (lhs: inout Double, rhs: UInt) {
        lhs += Double(rhs)
    }
    
    public static func += (lhs: inout Double, rhs: UInt8) {
        lhs += Double(rhs)
    }
    
    public static func += (lhs: inout Double, rhs: UInt16) {
        lhs += Double(rhs)
    }
    
    public static func += (lhs: inout Double, rhs: UInt32) {
        lhs += Double(rhs)
    }
    
    public static func += (lhs: inout Double, rhs: UInt64) {
        lhs += Double(rhs)
    }
}
