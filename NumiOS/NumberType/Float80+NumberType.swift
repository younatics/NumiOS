//
//  Float80+NumberType.swift
//  NumiOS
//
//  Created by 윤중현 on 01/10/2018.
//  Copyright © 2018 Seungyoun Yi. All rights reserved.
//

extension Float80: NumericType {
    
    public static func + (lhs: Float80, rhs: Any) -> Float80 {
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
    
    public static func + (lhs: Float80, rhs: Double) -> Float80 {
        return lhs + Float80(rhs)
    }
    
    public static func + (lhs: Float80, rhs: Float) -> Float80 {
        return lhs + Float80(rhs)
    }
    
    public static func + (lhs: Float80, rhs: Int) -> Float80 {
        return lhs + Float80(rhs)
    }
    
    public static func + (lhs: Float80, rhs: Int8) -> Float80 {
        return lhs + Float80(rhs)
    }
    
    public static func + (lhs: Float80, rhs: Int16) -> Float80 {
        return lhs + Float80(rhs)
    }
    
    public static func + (lhs: Float80, rhs: Int32) -> Float80 {
        return lhs + Float80(rhs)
    }
    
    public static func + (lhs: Float80, rhs: Int64) -> Float80 {
        return lhs + Float80(rhs)
    }
    
    public static func + (lhs: Float80, rhs: UInt) -> Float80 {
        return lhs + Float80(rhs)
    }
    
    public static func + (lhs: Float80, rhs: UInt8) -> Float80 {
        return lhs + Float80(rhs)
    }
    
    public static func + (lhs: Float80, rhs: UInt16) -> Float80 {
        return lhs + Float80(rhs)
    }
    
    public static func + (lhs: Float80, rhs: UInt32) -> Float80 {
        return lhs + Float80(rhs)
    }
    
    public static func + (lhs: Float80, rhs: UInt64) -> Float80 {
        return lhs + Float80(rhs)
    }
    
    public static func - (lhs: Float80, rhs: Any) -> Float80 {
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
    
    public static func - (lhs: Float80, rhs: Double) -> Float80 {
        return lhs - Float80(rhs)
    }
    
    public static func - (lhs: Float80, rhs: Float) -> Float80 {
        return lhs - Float80(rhs)
    }
    
    public static func - (lhs: Float80, rhs: Int) -> Float80 {
        return lhs - Float80(rhs)
    }
    
    public static func - (lhs: Float80, rhs: Int8) -> Float80 {
        return lhs - Float80(rhs)
    }
    
    public static func - (lhs: Float80, rhs: Int16) -> Float80 {
        return lhs - Float80(rhs)
    }
    
    public static func - (lhs: Float80, rhs: Int32) -> Float80 {
        return lhs - Float80(rhs)
    }
    
    public static func - (lhs: Float80, rhs: Int64) -> Float80 {
        return lhs - Float80(rhs)
    }
    
    public static func - (lhs: Float80, rhs: UInt) -> Float80 {
        return lhs - Float80(rhs)
    }
    
    public static func - (lhs: Float80, rhs: UInt8) -> Float80 {
        return lhs - Float80(rhs)
    }
    
    public static func - (lhs: Float80, rhs: UInt16) -> Float80 {
        return lhs - Float80(rhs)
    }
    
    public static func - (lhs: Float80, rhs: UInt32) -> Float80 {
        return lhs - Float80(rhs)
    }
    
    public static func - (lhs: Float80, rhs: UInt64) -> Float80 {
        return lhs - Float80(rhs)
    }
    
    public static func * (lhs: Float80, rhs: Any) -> Float80 {
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
    
    public static func * (lhs: Float80, rhs: Double) -> Float80 {
        return lhs * Float80(rhs)
    }
    
    public static func * (lhs: Float80, rhs: Float) -> Float80 {
        return lhs * Float80(rhs)
    }
    
    public static func * (lhs: Float80, rhs: Int) -> Float80 {
        return lhs * Float80(rhs)
    }
    
    public static func * (lhs: Float80, rhs: Int8) -> Float80 {
        return lhs * Float80(rhs)
    }
    
    public static func * (lhs: Float80, rhs: Int16) -> Float80 {
        return lhs * Float80(rhs)
    }
    
    public static func * (lhs: Float80, rhs: Int32) -> Float80 {
        return lhs * Float80(rhs)
    }
    
    public static func * (lhs: Float80, rhs: Int64) -> Float80 {
        return lhs * Float80(rhs)
    }
    
    public static func * (lhs: Float80, rhs: UInt) -> Float80 {
        return lhs * Float80(rhs)
    }
    
    public static func * (lhs: Float80, rhs: UInt8) -> Float80 {
        return lhs * Float80(rhs)
    }
    
    public static func * (lhs: Float80, rhs: UInt16) -> Float80 {
        return lhs * Float80(rhs)
    }
    
    public static func * (lhs: Float80, rhs: UInt32) -> Float80 {
        return lhs * Float80(rhs)
    }
    
    public static func * (lhs: Float80, rhs: UInt64) -> Float80 {
        return lhs * Float80(rhs)
    }
    
    public static func / (lhs: Float80, rhs: Any) -> Float80 {
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
    
    public static func / (lhs: Float80, rhs: Double) -> Float80 {
        return lhs / Float80(rhs)
    }
    
    public static func / (lhs: Float80, rhs: Float) -> Float80 {
        return lhs / Float80(rhs)
    }
    
    public static func / (lhs: Float80, rhs: Int) -> Float80 {
        return lhs / Float80(rhs)
    }
    
    public static func / (lhs: Float80, rhs: Int8) -> Float80 {
        return lhs / Float80(rhs)
    }
    
    public static func / (lhs: Float80, rhs: Int16) -> Float80 {
        return lhs / Float80(rhs)
    }
    
    public static func / (lhs: Float80, rhs: Int32) -> Float80 {
        return lhs / Float80(rhs)
    }
    
    public static func / (lhs: Float80, rhs: Int64) -> Float80 {
        return lhs / Float80(rhs)
    }
    
    public static func / (lhs: Float80, rhs: UInt) -> Float80 {
        return lhs / Float80(rhs)
    }
    
    public static func / (lhs: Float80, rhs: UInt8) -> Float80 {
        return lhs / Float80(rhs)
    }
    
    public static func / (lhs: Float80, rhs: UInt16) -> Float80 {
        return lhs / Float80(rhs)
    }
    
    public static func / (lhs: Float80, rhs: UInt32) -> Float80 {
        return lhs / Float80(rhs)
    }
    
    public static func / (lhs: Float80, rhs: UInt64) -> Float80 {
        return lhs / Float80(rhs)
    }
    
    public static func += (lhs: inout Float80, rhs: Any) {
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
    
    public static func += (lhs: inout Float80, rhs: Double) {
        lhs += Float80(rhs)
    }
    
    public static func += (lhs: inout Float80, rhs: Float) {
        lhs += Float80(rhs)
    }
    
    public static func += (lhs: inout Float80, rhs: Int) {
        lhs += Float80(rhs)
    }
    
    public static func += (lhs: inout Float80, rhs: Int8) {
        lhs += Float80(rhs)
    }
    
    public static func += (lhs: inout Float80, rhs: Int16) {
        lhs += Float80(rhs)
    }
    
    public static func += (lhs: inout Float80, rhs: Int32) {
        lhs += Float80(rhs)
    }
    
    public static func += (lhs: inout Float80, rhs: Int64) {
        lhs += Float80(rhs)
    }
    
    public static func += (lhs: inout Float80, rhs: UInt) {
        lhs += Float80(rhs)
    }
    
    public static func += (lhs: inout Float80, rhs: UInt8) {
        lhs += Float80(rhs)
    }
    
    public static func += (lhs: inout Float80, rhs: UInt16) {
        lhs += Float80(rhs)
    }
    
    public static func += (lhs: inout Float80, rhs: UInt32) {
        lhs += Float80(rhs)
    }
    
    public static func += (lhs: inout Float80, rhs: UInt64) {
        lhs += Float80(rhs)
    }
}
