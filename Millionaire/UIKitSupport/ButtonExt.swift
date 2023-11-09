//
//  ButtonExt.swift
//  Millionaire
//
//  Created by Владислав Склюев on 23.05.2023.
//

import UIKit

extension UIButton {
    
    convenience init(title: String, bg: UIColor) {
        self.init(type: .system)
        setTitle(title, for: .normal)
        backgroundColor = bg
        tintColor = .black
        heightAnchor.constraint(equalToConstant: 30).isActive = true
        widthAnchor.constraint(equalToConstant: 130).isActive = true
    }
    
}
