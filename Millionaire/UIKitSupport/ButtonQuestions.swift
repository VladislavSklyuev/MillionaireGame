//
//  ButtonQuestions.swift
//  Millionaire
//
//  Created by Владислав Склюев on 31.05.2023.
//

import UIKit

extension UIButton {
    
    convenience init(im: UIImage) {
        self.init(type: .system)
        setImage(im, for: .normal)
        //backgroundColor = UIColor(named: "startFon")
        //layer.cornerRadius = 50
//        heightAnchor.constraint(equalToConstant: 200).isActive = true
//        widthAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
}

