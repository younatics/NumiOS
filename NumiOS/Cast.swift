//
//  Cast.swift
//  NumiOS
//
//  Created by 윤중현 on 02/10/2018.
//  Copyright © 2018 Seungyoun Yi. All rights reserved.
//

func castToInt(_ value: Any) -> Int? {
    switch value {
    case let value as Int: return value
    case let value as Float: return Int(value)
    case let value as Double: return Int(value)
    case let value as String: return Int(value)
    default: return nil
    }
}

func castToFloat(_ value: Any) -> Float? {
    switch value {
    case let value as Int: return Float(value)
    case let value as Float: return value
    case let value as Double: return Float(value)
    case let value as String: return Float(value)
    default: return nil
    }
}

func castToDouble(_ value: Any) -> Double? {
    switch value {
    case let value as Int: return Double(value)
    case let value as Float: return Double(value)
    case let value as Double: return value
    case let value as String: return Double(value)
    default: return nil
    }
}
