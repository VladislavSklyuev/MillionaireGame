//
//  ButtonHelp.swift
//  Millionaire
//
//  Created by Владислав Склюев on 19.05.2023.
//

import UIKit

extension UIButton {
    
    convenience init(bg: UIImage) {
        self.init(type: .system)
        setImage(bg, for: .normal)
        backgroundColor = UIColor(named: "startFon")
        layer.cornerRadius = 50
        heightAnchor.constraint(equalToConstant: 100).isActive = true
        widthAnchor.constraint(equalToConstant: 100).isActive = true
    }
    
}
