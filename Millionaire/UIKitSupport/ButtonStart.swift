//
//  ButtonStart.swift
//  Millionaire
//
//  Created by Владислав Склюев on 24.05.2023.
//

import UIKit

extension UIButton {
    
    convenience init(bg: UIColor, text: String) {
        self.init(type: .system)
        setTitle(text, for: .normal)
        backgroundColor = bg
        layer.cornerRadius = 12
        tintColor = .white
        titleLabel?.font = .boldSystemFont(ofSize: 18)
        heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
}
