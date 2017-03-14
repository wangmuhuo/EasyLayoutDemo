//
//  ESNumberConversion.swift
//  EasyLayout
//
//  Created by Jejay on 16/12/29.
//  Copyright © 2016年 jejay. All rights reserved.
//
//  数值类型之间转换，溢出转换失败

import UIKit

public protocol Intable {
    var toInt: Int { get }
}

public protocol Int8able {
    var toInt8: Int8 { get }
}

public protocol Int16able {
    var toInt16: Int16 { get }
}

public protocol Int32able {
    var toInt32: Int32 { get }
}

public protocol Int64able {
    var toInt64: Int64 { get }
}

//
public protocol UIntable {
    var toUInt: UInt { get }
}

public protocol UInt8able {
    var toUInt8: UInt8 { get }
}

public protocol UInt16able {
    var toUInt16: UInt16 { get }
}

public protocol UInt32able {
    var toUInt32: UInt32 { get }
}

public protocol UInt64able {
    var toUInt64: UInt64 { get }
}

//
public protocol Floatable {
    var toFloat: Float { get }
}

public protocol Doubleable {
    var toDouble: Double { get }
}

//
public protocol CGFloatable {
    var toCGFloat: CGFloat { get }
}

public protocol NumberConversible: Intable, Int8able, Int16able, Int32able, Int64able, UIntable, UInt8able, UInt16able, UInt32able, UInt64able, Floatable, Doubleable, CGFloatable {
    
}

extension Int: NumberConversible {
    
    public var toInt: Int { return self }
    
    public var toInt8: Int8 { return Int8(self)  }
    
    public var toInt16: Int16 { return Int16(self) }
    
    public var toInt32: Int32 { return Int32(self) }
    
    public var toInt64: Int64 { return Int64(self) }
    
    public var toUInt: UInt { return UInt(self) }
    
    public var toUInt8: UInt8 { return UInt8(self) }
    
    public var toUInt16: UInt16 { return UInt16(self) }
    
    public var toUInt32: UInt32 { return UInt32(self) }
    
    public var toUInt64: UInt64 { return UInt64(self) }
    
    public var toFloat: Float { return Float(self) }
    
    public var toDouble: Double { return Double(self) }
    
    public var toCGFloat: CGFloat { return CGFloat(self) }
}

extension Int8: NumberConversible {
    
    public var toInt: Int { return Int(self) }
    
    public var toInt8: Int8 { return self }
    
    public var toInt16: Int16 { return Int16(self) }
    
    public var toInt32: Int32 { return Int32(self) }
    
    public var toInt64: Int64 { return Int64(self) }
    
    public var toUInt: UInt { return UInt(self) }
    
    public var toUInt8: UInt8 { return UInt8(self) }
    
    public var toUInt16: UInt16 { return UInt16(self) }
    
    public var toUInt32: UInt32 { return UInt32(self) }
    
    public var toUInt64: UInt64 { return UInt64(self) }
    
    public var toFloat: Float { return Float(self) }
    
    public var toDouble: Double { return Double(self) }
    
    public var toCGFloat: CGFloat { return CGFloat(self) }
}

extension Int16: NumberConversible {
    
    public var toInt: Int { return Int(self) }
    
    public var toInt8: Int8 { return Int8(self)  }
    
    public var toInt16: Int16 { return Int16(self) }
    
    public var toInt32: Int32 { return Int32(self) }
    
    public var toInt64: Int64 { return Int64(self) }
    
    public var toUInt: UInt { return UInt(self) }
    
    public var toUInt8: UInt8 { return UInt8(self) }
    
    public var toUInt16: UInt16 { return UInt16(self) }
    
    public var toUInt32: UInt32 { return UInt32(self) }
    
    public var toUInt64: UInt64 { return UInt64(self) }
    
    public var toFloat: Float { return Float(self) }
    
    public var toDouble: Double { return Double(self) }
    
    public var toCGFloat: CGFloat { return CGFloat(self) }
}

extension Int32: NumberConversible {
    
    public var toInt: Int { return Int(self) }
    
    public var toInt8: Int8 { return Int8(self)  }
    
    public var toInt16: Int16 { return Int16(self) }
    
    public var toInt32: Int32 { return self }
    
    public var toInt64: Int64 { return Int64(self) }
    
    public var toUInt: UInt { return UInt(self) }
    
    public var toUInt8: UInt8 { return UInt8(self) }
    
    public var toUInt16: UInt16 { return UInt16(self) }
    
    public var toUInt32: UInt32 { return UInt32(self) }
    
    public var toUInt64: UInt64 { return UInt64(self) }
    
    public var toFloat: Float { return Float(self) }
    
    public var toDouble: Double { return Double(self) }
    
    public var toCGFloat: CGFloat { return CGFloat(self) }
}

extension Int64: NumberConversible {
    
    public var toInt: Int { return Int(self) }
    
    public var toInt8: Int8 { return Int8(self)  }
    
    public var toInt16: Int16 { return Int16(self) }
    
    public var toInt32: Int32 { return Int32(self) }
    
    public var toInt64: Int64 { return self }
    
    public var toUInt: UInt { return UInt(self) }
    
    public var toUInt8: UInt8 { return UInt8(self) }
    
    public var toUInt16: UInt16 { return UInt16(self) }
    
    public var toUInt32: UInt32 { return UInt32(self) }
    
    public var toUInt64: UInt64 { return UInt64(self) }
    
    public var toFloat: Float { return Float(self) }
    
    public var toDouble: Double { return Double(self) }
    
    public var toCGFloat: CGFloat { return CGFloat(self) }
}

extension UInt: NumberConversible {
    
    public var toInt: Int { return Int(self) }
    
    public var toInt8: Int8 { return Int8(self)  }
    
    public var toInt16: Int16 { return Int16(self) }
    
    public var toInt32: Int32 { return Int32(self) }
    
    public var toInt64: Int64 { return Int64(self) }
    
    public var toUInt: UInt { return self }
    
    public var toUInt8: UInt8 { return UInt8(self) }
    
    public var toUInt16: UInt16 { return UInt16(self) }
    
    public var toUInt32: UInt32 { return UInt32(self) }
    
    public var toUInt64: UInt64 { return UInt64(self) }
    
    public var toFloat: Float { return Float(self) }
    
    public var toDouble: Double { return Double(self) }
    
    public var toCGFloat: CGFloat { return CGFloat(self) }
}

extension UInt8: NumberConversible {
    
    public var toInt: Int { return Int(self) }
    
    public var toInt8: Int8 { return Int8(self)  }
    
    public var toInt16: Int16 { return Int16(self) }
    
    public var toInt32: Int32 { return Int32(self) }
    
    public var toInt64: Int64 { return Int64(self) }
    
    public var toUInt: UInt { return UInt(self) }
    
    public var toUInt8: UInt8 { return self }
    
    public var toUInt16: UInt16 { return UInt16(self) }
    
    public var toUInt32: UInt32 { return UInt32(self) }
    
    public var toUInt64: UInt64 { return UInt64(self) }
    
    public var toFloat: Float { return Float(self) }
    
    public var toDouble: Double { return Double(self) }
    
    public var toCGFloat: CGFloat { return CGFloat(self) }
}

extension UInt16: NumberConversible {
    
    public var toInt: Int { return Int(self) }
    
    public var toInt8: Int8 { return Int8(self)  }
    
    public var toInt16: Int16 { return Int16(self) }
    
    public var toInt32: Int32 { return Int32(self) }
    
    public var toInt64: Int64 { return Int64(self) }
    
    public var toUInt: UInt { return UInt(self) }
    
    public var toUInt8: UInt8 { return UInt8(self) }
    
    public var toUInt16: UInt16 { return self }
    
    public var toUInt32: UInt32 { return UInt32(self) }
    
    public var toUInt64: UInt64 { return UInt64(self) }
    
    public var toFloat: Float { return Float(self) }
    
    public var toDouble: Double { return Double(self) }
    
    public var toCGFloat: CGFloat { return CGFloat(self) }
}

extension UInt32: NumberConversible {
    
    public var toInt: Int { return Int(self) }
    
    public var toInt8: Int8 { return Int8(self)  }
    
    public var toInt16: Int16 { return Int16(self) }
    
    public var toInt32: Int32 { return Int32(self) }
    
    public var toInt64: Int64 { return Int64(self) }
    
    public var toUInt: UInt { return UInt(self) }
    
    public var toUInt8: UInt8 { return UInt8(self) }
    
    public var toUInt16: UInt16 { return UInt16(self) }
    
    public var toUInt32: UInt32 { return self }
    
    public var toUInt64: UInt64 { return UInt64(self) }
    
    public var toFloat: Float { return Float(self) }
    
    public var toDouble: Double { return Double(self) }
    
    public var toCGFloat: CGFloat { return CGFloat(self) }
}

extension UInt64: NumberConversible {
    
    public var toInt: Int { return Int(self) }
    
    public var toInt8: Int8 { return Int8(self)  }
    
    public var toInt16: Int16 { return Int16(self) }
    
    public var toInt32: Int32 { return Int32(self) }
    
    public var toInt64: Int64 { return Int64(self) }
    
    public var toUInt: UInt { return UInt(self) }
    
    public var toUInt8: UInt8 { return UInt8(self) }
    
    public var toUInt16: UInt16 { return UInt16(self) }
    
    public var toUInt32: UInt32 { return UInt32(self) }
    
    public var toUInt64: UInt64 { return self }
    
    public var toFloat: Float { return Float(self) }
    
    public var toDouble: Double { return Double(self) }
    
    public var toCGFloat: CGFloat { return CGFloat(self) }
}

extension Float: NumberConversible {
    
    public var toInt: Int { return Int(self) }
    
    public var toInt8: Int8 { return Int8(self)  }
    
    public var toInt16: Int16 { return Int16(self) }
    
    public var toInt32: Int32 { return Int32(self) }
    
    public var toInt64: Int64 { return Int64(self) }
    
    public var toUInt: UInt { return UInt(self) }
    
    public var toUInt8: UInt8 { return UInt8(self) }
    
    public var toUInt16: UInt16 { return UInt16(self) }
    
    public var toUInt32: UInt32 { return UInt32(self) }
    
    public var toUInt64: UInt64 { return UInt64(self) }
    
    public var toFloat: Float { return self }
    
    public var toDouble: Double { return Double(self) }
    
    public var toCGFloat: CGFloat { return CGFloat(self) }
}

extension Double: NumberConversible {
    
    public var toInt: Int { return Int(self) }
    
    public var toInt8: Int8 { return Int8(self)  }
    
    public var toInt16: Int16 { return Int16(self) }
    
    public var toInt32: Int32 { return Int32(self) }
    
    public var toInt64: Int64 { return Int64(self) }
    
    public var toUInt: UInt { return UInt(self) }
    
    public var toUInt8: UInt8 { return UInt8(self) }
    
    public var toUInt16: UInt16 { return UInt16(self) }
    
    public var toUInt32: UInt32 { return UInt32(self) }
    
    public var toUInt64: UInt64 { return UInt64(self) }
    
    public var toFloat: Float { return Float(self) }
    
    public var toDouble: Double { return self }
    
    public var toCGFloat: CGFloat { return CGFloat(self) }
}

extension CGFloat: NumberConversible {
    
    public var toInt: Int { return Int(self) }
    
    public var toInt8: Int8 { return Int8(self)  }
    
    public var toInt16: Int16 { return Int16(self) }
    
    public var toInt32: Int32 { return Int32(self) }
    
    public var toInt64: Int64 { return Int64(self) }
    
    public var toUInt: UInt { return UInt(self) }
    
    public var toUInt8: UInt8 { return UInt8(self) }
    
    public var toUInt16: UInt16 { return UInt16(self) }
    
    public var toUInt32: UInt32 { return UInt32(self) }
    
    public var toUInt64: UInt64 { return UInt64(self) }
    
    public var toFloat: Float { return Float(self) }
    
    public var toDouble: Double { return Double(self) }
    
    public var toCGFloat: CGFloat { return self }
}
















