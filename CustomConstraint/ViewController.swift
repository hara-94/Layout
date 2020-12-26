//
//  ViewController.swift
//  CustomConstraint
//
//  Created by 原ひかる on 2020/12/26.
//

import UIKit

class ViewController: UIViewController {

    private let squareView: UIView = .init()
    private let customView: AppCustomView = .init()
    
    override func loadView() {
        super.loadView()
        view.addSubviews([customView]).activateAutolayout()
        customView.layout.width(multiplier: 0.5).height(100).centerX().centerY().activate()
    }
}

