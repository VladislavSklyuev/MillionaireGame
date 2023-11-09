//
//  ButtonAnswer.swift
//  Millionaire
//
//  Created by Владислав Склюев on 19.05.2023.
//

import UIKit

extension UIButton {
    
    convenience init(text: String, bgt: UIColor) {
        self.init(type: .system)
        setTitle(text, for: .normal)
        backgroundColor = UIColor(named: "startFon")
        layer.cornerRadius = 10
        tintColor = .white
        heightAnchor.constraint(equalToConstant: 35).isActive = true
        widthAnchor.constraint(equalToConstant: 360).isActive = true
    }
    
}
