//
//  ArrayExtension.swift
//  NumiOS
//
//  Created by 윤중현 on 02/10/2018.
//  Copyright © 2018 Seungyoun Yi. All rights reserved.
//

public extension Array {
    func castToInt(default: Int = 0) -> Array<Int> {
        return self.cast(to: Int.self, default: `default`)
    }
    
    func castToFloat(default: Float = 0) -> Array<Float> {
        return self.cast(to: Float.self, default: `default`)
    }
    
    func castToDouble(default: Double = 0) -> Array<Double> {
        return self.cast(to: Double.self, default: `default`)
    }
    
    func cast<T>(to type: T.Type, default: T) -> Array<T> {
        return self.map({ $0 as? T }).compactMap({ $0 == nil ? `default` : $0 })
    }
}

public extension Array where Element == Array<Any> {
    func castToInt(default: Int = 0) -> Array<Any> {
        return self.cast(to: Int.self, default: `default`)
    }
    
    func castToFloat(default: Float = 0) -> Array<Any> {
        return self.cast(to: Float.self, default: `default`)
    }
    
    func castToDouble(default: Double = 0) -> Array<Any> {
        return self.cast(to: Double.self, default: `default`)
    }
    
    func cast<T>(to type: T.Type, default: T) -> Array<Any> {
        return self.map({ $0.cast(to: type, default: `default`) })
    }
}
