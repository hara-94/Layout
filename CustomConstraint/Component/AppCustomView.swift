//
//  AppCustomView.swift
//  CustomConstraint
//
//  Created by 原ひかる on 2020/12/26.
//

import UIKit

public final class AppCustomView: UIView {
    private let titleLabel: UILabel = {
        let label: UILabel = .init()
        label.text = "Title"
        return label
    }()
    
    private let subTitleLabel: UILabel = {
        let label: UILabel = .init()
        label.text = "SubTitle"
        return label
    }()
    
    private let imageView: UIImageView = {
        let view: UIImageView = .init()
        view.image = .checkmark
        return view
    }()
    
    private let borderView: UIView = {
        let view: UIView = .init()
        view.backgroundColor = .lightGray
        return view
    }()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        addSubviews([titleLabel, subTitleLabel, imageView, borderView]).activateAutolayout()
        Layout.activateLayouts([
            imageView.layout.width(20).height(20).left(constant: 16).centerY().put(titleLabel).toRight(16).put(subTitleLabel).toRight(16),
            titleLabel.layout.top(constant: 20).right(constant: 16).put(subTitleLabel).under(16),
            borderView.layout.left().right().bottom().height(1)
        ])
    }
}
