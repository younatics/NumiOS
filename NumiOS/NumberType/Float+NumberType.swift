//
//  Float+NumberType.swift
//  NumiOS
//
//  Created by 윤중현 on 01/10/2018.
//  Copyright © 2018 Seungyoun Yi. All rights reserved.
//

extension Float: NumericType {
    
    public static func + (lhs: Float, rhs: Any) -> Float {
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
    
    public static func + (lhs: Float, rhs: Double) -> Float {
        return lhs + Float(rhs)
    }
    
    public static func + (lhs: Float, rhs: Float80) -> Float {
        return lhs + Float(rhs)
    }
    
    public static func + (lhs: Float, rhs: Int) -> Float {
        return lhs + Float(rhs)
    }
    
    public static func + (lhs: Float, rhs: Int8) -> Float {
        return lhs + Float(rhs)
    }
    
    public static func + (lhs: Float, rhs: Int16) -> Float {
        return lhs + Float(rhs)
    }
    
    public static func + (lhs: Float, rhs: Int32) -> Float {
        return lhs + Float(rhs)
    }
    
    public static func + (lhs: Float, rhs: Int64) -> Float {
        return lhs + Float(rhs)
    }
    
    public static func + (lhs: Float, rhs: UInt) -> Float {
        return lhs + Float(rhs)
    }
    
    public static func + (lhs: Float, rhs: UInt8) -> Float {
        return lhs + Float(rhs)
    }
    
    public static func + (lhs: Float, rhs: UInt16) -> Float {
        return lhs + Float(rhs)
    }
    
    public static func + (lhs: Float, rhs: UInt32) -> Float {
        return lhs + Float(rhs)
    }
    
    public static func + (lhs: Float, rhs: UInt64) -> Float {
        return lhs + Float(rhs)
    }
    
    public static func - (lhs: Float, rhs: Any) -> Float {
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
    
    public static func - (lhs: Float, rhs: Double) -> Float {
        return lhs - Float(rhs)
    }
    
    public static func - (lhs: Float, rhs: Float80) -> Float {
        return lhs - Float(rhs)
    }
    
    public static func - (lhs: Float, rhs: Int) -> Float {
        return lhs - Float(rhs)
    }
    
    public static func - (lhs: Float, rhs: Int8) -> Float {
        return lhs - Float(rhs)
    }
    
    public static func - (lhs: Float, rhs: Int16) -> Float {
        return lhs - Float(rhs)
    }
    
    public static func - (lhs: Float, rhs: Int32) -> Float {
        return lhs - Float(rhs)
    }
    
    public static func - (lhs: Float, rhs: Int64) -> Float {
        return lhs - Float(rhs)
    }
    
    public static func - (lhs: Float, rhs: UInt) -> Float {
        return lhs - Float(rhs)
    }
    
    public static func - (lhs: Float, rhs: UInt8) -> Float {
        return lhs - Float(rhs)
    }
    
    public static func - (lhs: Float, rhs: UInt16) -> Float {
        return lhs - Float(rhs)
    }
    
    public static func - (lhs: Float, rhs: UInt32) -> Float {
        return lhs - Float(rhs)
    }
    
    public static func - (lhs: Float, rhs: UInt64) -> Float {
        return lhs - Float(rhs)
    }
    
    public static func * (lhs: Float, rhs: Any) -> Float {
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
    
    public static func * (lhs: Float, rhs: Double) -> Float {
        return lhs * Float(rhs)
    }
    
    public static func * (lhs: Float, rhs: Float80) -> Float {
        return lhs * Float(rhs)
    }
    
    public static func * (lhs: Float, rhs: Int) -> Float {
        return lhs * Float(rhs)
    }
    
    public static func * (lhs: Float, rhs: Int8) -> Float {
        return lhs * Float(rhs)
    }
    
    public static func * (lhs: Float, rhs: Int16) -> Float {
        return lhs * Float(rhs)
    }
    
    public static func * (lhs: Float, rhs: Int32) -> Float {
        return lhs * Float(rhs)
    }
    
    public static func * (lhs: Float, rhs: Int64) -> Float {
        return lhs * Float(rhs)
    }
    
    public static func * (lhs: Float, rhs: UInt) -> Float {
        return lhs * Float(rhs)
    }
    
    public static func * (lhs: Float, rhs: UInt8) -> Float {
        return lhs * Float(rhs)
    }
    
    public static func * (lhs: Float, rhs: UInt16) -> Float {
        return lhs * Float(rhs)
    }
    
    public static func * (lhs: Float, rhs: UInt32) -> Float {
        return lhs * Float(rhs)
    }
    
    public static func * (lhs: Float, rhs: UInt64) -> Float {
        return lhs * Float(rhs)
    }
    
    public static func / (lhs: Float, rhs: Any) -> Float {
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
    
    public static func / (lhs: Float, rhs: Double) -> Float {
        return lhs / Float(rhs)
    }
    
    public static func / (lhs: Float, rhs: Float80) -> Float {
        return lhs / Float(rhs)
    }
    
    public static func / (lhs: Float, rhs: Int) -> Float {
        return lhs / Float(rhs)
    }
    
    public static func / (lhs: Float, rhs: Int8) -> Float {
        return lhs / Float(rhs)
    }
    
    public static func / (lhs: Float, rhs: Int16) -> Float {
        return lhs / Float(rhs)
    }
    
    public static func / (lhs: Float, rhs: Int32) -> Float {
        return lhs / Float(rhs)
    }
    
    public static func / (lhs: Float, rhs: Int64) -> Float {
        return lhs / Float(rhs)
    }
    
    public static func / (lhs: Float, rhs: UInt) -> Float {
        return lhs / Float(rhs)
    }
    
    public static func / (lhs: Float, rhs: UInt8) -> Float {
        return lhs / Float(rhs)
    }
    
    public static func / (lhs: Float, rhs: UInt16) -> Float {
        return lhs / Float(rhs)
    }
    
    public static func / (lhs: Float, rhs: UInt32) -> Float {
        return lhs / Float(rhs)
    }
    
    public static func / (lhs: Float, rhs: UInt64) -> Float {
        return lhs / Float(rhs)
    }
    
    public static func += (lhs: inout Float, rhs: Any) {
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
    
    public static func += (lhs: inout Float, rhs: Double) {
        lhs += Float(rhs)
    }
    
    public static func += (lhs: inout Float, rhs: Float80) {
        lhs += Float(rhs)
    }
    
    public static func += (lhs: inout Float, rhs: Int) {
        lhs += Float(rhs)
    }
    
    public static func += (lhs: inout Float, rhs: Int8) {
        lhs += Float(rhs)
    }
    
    public static func += (lhs: inout Float, rhs: Int16) {
        lhs += Float(rhs)
    }
    
    public static func += (lhs: inout Float, rhs: Int32) {
        lhs += Float(rhs)
    }
    
    public static func += (lhs: inout Float, rhs: Int64) {
        lhs += Float(rhs)
    }
    
    public static func += (lhs: inout Float, rhs: UInt) {
        lhs += Float(rhs)
    }
    
    public static func += (lhs: inout Float, rhs: UInt8) {
        lhs += Float(rhs)
    }
    
    public static func += (lhs: inout Float, rhs: UInt16) {
        lhs += Float(rhs)
    }
    
    public static func += (lhs: inout Float, rhs: UInt32) {
        lhs += Float(rhs)
    }
    
    public static func += (lhs: inout Float, rhs: UInt64) {
        lhs += Float(rhs)
    }
}
