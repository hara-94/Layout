//
//  UIView+.swift
//  CustomConstraint
//
//  Created by 原ひかる on 2020/12/26.
//

import UIKit

extension UIView {
    public var layout: Layout {
        return .init(of: self)
    }
    
    @discardableResult
    public func addSubviews(_ subviews: [UIView]) -> Self {
        subviews.forEach { addSubview($0) }
        return self
    }
    
    public func activateAutolayout() {
        subviews.forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
    }
}
