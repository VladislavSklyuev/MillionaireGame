//
//  QuestionsViewController.swift
//  Millionaire
//
//  Created by Владислав Склюев on 31.05.2023.
//

import UIKit

class QuestionsViewController: UIViewController {
    
    let mainView = QuestionsView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = mainView
        addActions()
    }
    
    func addActions() {
        let ext = UIAction { _ in
            
            let gameVC = StartViewController()
            gameVC.modalPresentationStyle = .fullScreen
            self.present(gameVC, animated: true)
        }
        mainView.buttonBack.addAction(ext, for: .touchUpInside)
    }
    
}
