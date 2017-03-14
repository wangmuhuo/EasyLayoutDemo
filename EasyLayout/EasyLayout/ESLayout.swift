//
//  ESLayout.swift
//  EasyLayout
//
//  Created by Jejay on 16/12/28.
//  Copyright © 2016年 jejay. All rights reserved.
//

import UIKit

infix operator .= {
associativity left
precedence 110
}

infix operator .<= {
associativity left
precedence 110
}

infix operator .>= {
associativity left
precedence 110
}

infix operator .* {
associativity left
precedence 120
}

infix operator ./ {
associativity left
precedence 120
}

infix operator .+ {
associativity left
precedence 119
}

infix operator .- {
associativity left
precedence 119
}

infix operator .| {
associativity left
precedence 109
}

infix operator ~= {
associativity left
precedence 100
}


public protocol ESLayoutable: AnyObject {
    
}

protocol ESLayoutAttributeable {
    
    var target: NSLayoutAttribute { get }
}

extension NSLayoutAttribute: ESLayoutAttributeable {
    
    var target: NSLayoutAttribute {
        return self
    }
}

public protocol ESOperationable {
    
    var es_param: ESLayoutConstraintParamable { get }
}

public protocol ESLayoutConstraintParamable {
    
    func es_createConstraintWith(left: ESAttribute, by relation: NSLayoutRelation) -> NSLayoutConstraint
}

private struct ESAttributeParam: ESLayoutConstraintParamable {
    
    private let param: ESAttribute
    
    init(param: ESAttribute) {
        self.param = param
    }
    
    func es_createConstraintWith(left: ESAttribute, by relation: NSLayoutRelation) -> NSLayoutConstraint {
        return  NSLayoutConstraint(
            item: left.item.target, attribute: left.attribute.target,
            relatedBy: relation,
            toItem: self.param.item.target, attribute: self.param.attribute.target,
            multiplier: (self.param.multiplier / left.multiplier),
            constant: (self.param.offset - left.offset) / left.multiplier)
    }
}

private struct ESCGFloatableParam: ESLayoutConstraintParamable {
    
    private let param: CGFloatable
    
    init(param: CGFloatable) {
        self.param = param
    }
    
    func es_createConstraintWith(left: ESAttribute, by relation: NSLayoutRelation) -> NSLayoutConstraint{
        return NSLayoutConstraint(
            item: left.item.target, attribute: left.attribute.target,
            relatedBy: .Equal,
            toItem: nil, attribute: .NotAnAttribute,
            multiplier: 1,
            constant: (self.param.toCGFloat - left.offset) / left.multiplier)
    }
}

public struct ESItem {
    
    private let target: AnyObject
    
    init(target: AnyObject) {
        self.target = target
    }
}


extension ESItem {
    
    public var left: ESAttribute {
        return ESAttribute(item: self, attribute: NSLayoutAttribute.Left)
    }
    
    public var right: ESAttribute {
        return ESAttribute(item: self, attribute: NSLayoutAttribute.Right)
    }
    
    public var top: ESAttribute {
        return ESAttribute(item: self, attribute: NSLayoutAttribute.Top)
    }
    
    public var bottom: ESAttribute {
        return ESAttribute(item: self, attribute: NSLayoutAttribute.Bottom)
    }
    
    public var leading: ESAttribute {
        return ESAttribute(item: self, attribute: NSLayoutAttribute.Leading)
    }
    
    public var trailing: ESAttribute {
        return ESAttribute(item: self, attribute: NSLayoutAttribute.Trailing)
    }
    
    public var width: ESAttribute {
        return ESAttribute(item: self, attribute: NSLayoutAttribute.Width)
    }
    
    public var height: ESAttribute {
        return ESAttribute(item: self, attribute: NSLayoutAttribute.Height)
    }
    
    public var centerX: ESAttribute {
        return ESAttribute(item: self, attribute: NSLayoutAttribute.CenterX)
    }
    
    public var centerY: ESAttribute {
        return ESAttribute(item: self, attribute: NSLayoutAttribute.CenterY)
    }
    
    public var baseline: ESAttribute {
        return ESAttribute(item: self, attribute: NSLayoutAttribute.Baseline)
    }
    
    public var lastBaseline: ESAttribute {
        return ESAttribute(item: self, attribute: NSLayoutAttribute.LastBaseline)
    }
    
    public var firstBaseline: ESAttribute {
        return ESAttribute(item: self, attribute: NSLayoutAttribute.FirstBaseline)
    }
    
    public var leftMargin: ESAttribute {
        return ESAttribute(item: self, attribute: NSLayoutAttribute.LeftMargin)
    }
    
    public var rightMargin: ESAttribute {
        return ESAttribute(item: self, attribute: NSLayoutAttribute.RightMargin)
    }
    
    public var topMargin: ESAttribute {
        return ESAttribute(item: self, attribute: NSLayoutAttribute.TopMargin)
    }
    
    public var bottomMargin: ESAttribute {
        return ESAttribute(item: self, attribute: NSLayoutAttribute.BottomMargin)
    }
    
    public var leadingMargin: ESAttribute {
        return ESAttribute(item: self, attribute: NSLayoutAttribute.LeadingMargin)
    }
    
    public var trailingMargin: ESAttribute {
        return ESAttribute(item: self, attribute: NSLayoutAttribute.TrailingMargin)
    }
    
    public var centerXWithinMargins: ESAttribute {
        return ESAttribute(item: self, attribute: NSLayoutAttribute.CenterXWithinMargins)
    }
    
    public var centerYWithinMargins: ESAttribute {
        return ESAttribute(item: self, attribute: NSLayoutAttribute.CenterYWithinMargins)
    }
    
    public func attribute(attribute: NSLayoutAttribute) -> ESAttribute {
        return ESAttribute(item: self, attribute: attribute)
    }
    
}


public class ESAttribute {
    
    private let item: ESItem
    private let attribute: ESLayoutAttributeable
    
    private var multiplier: CGFloat = 1
    private var offset: CGFloat = 0
    
    init(item: ESItem, attribute: ESLayoutAttributeable) {
        self.item = item
        self.attribute = attribute
    }
    
}

extension ESAttribute: ESOperationable {

    public var es_param: ESLayoutConstraintParamable {
        return ESAttributeParam(param: self)
    }
}

extension CGFloatable where Self: ESOperationable {
    
    public var es_param: ESLayoutConstraintParamable {
        return ESCGFloatableParam(param: self)
    }
}

extension CGFloat: ESOperationable {
    
}

extension Int: ESOperationable {
    
}

public func .=<T: ESOperationable>(left: ESAttribute, right: T) -> NSLayoutConstraint {
    return right.es_param.es_createConstraintWith(left, by: .Equal)
}

public func .<=<T: ESOperationable>(left: ESAttribute, right: T) -> NSLayoutConstraint {
    return right.es_param.es_createConstraintWith(left, by: .LessThanOrEqual)
}

public func .>=<T: ESOperationable>(left: ESAttribute, right: T) -> NSLayoutConstraint {
    return right.es_param.es_createConstraintWith(left, by: .GreaterThanOrEqual)
}

public func .*(left: ESAttribute, right: CGFloat) -> ESAttribute {
    left.multiplier = left.multiplier * right
    return left
}

public func ./(left: ESAttribute, right: CGFloat) -> ESAttribute {
    left.multiplier = left.multiplier / right
    return left
}

public func .+(left: ESAttribute, right: CGFloat) -> ESAttribute {
    left.offset = left.offset + right
    return left
}

public func .-(left: ESAttribute, right: CGFloat) -> ESAttribute {
    left.offset = left.offset - right
    return left
}

public func .|(left: NSLayoutConstraint, right: UILayoutPriority) -> NSLayoutConstraint {
    left.priority = right
    return left
}

extension ESLayoutable {
    
    public var es: ESItem {
        return ESItem(target: self)
    }
}

// MARK: 与 UIView 进行链接
extension UIView: ESLayoutable {
    
}

// MARK: 与 UIViewController 进行链接
extension UIViewController {
    
    public var es_topLayoutGuideTop: ESAttribute {
        return ESAttribute(item: ESItem(target: self.topLayoutGuide), attribute: NSLayoutAttribute.Top)
    }
    
    public var es_topLayoutGuideBottom: ESAttribute {
        return ESAttribute(item: ESItem(target: self.topLayoutGuide), attribute: NSLayoutAttribute.Bottom)
    }
    
    public var es_bottomLayoutGuideTop: ESAttribute {
        return ESAttribute(item: ESItem(target: self.bottomLayoutGuide), attribute: NSLayoutAttribute.Top)
    }
    
    public var es_bottomLayoutGuideBottom: ESAttribute {
        return ESAttribute(item: ESItem(target: self.bottomLayoutGuide), attribute: NSLayoutAttribute.Bottom)
    }
}



