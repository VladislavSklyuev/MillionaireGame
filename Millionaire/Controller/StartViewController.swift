//
//  ViewController.swift
//  Millionaire
//
//  Created by Владислав Склюев on 18.05.2023.
//

import UIKit

class StartViewController: UIViewController {
    let mainView = StartView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = mainView
        addActions()
    }
    
    func addActions() {
        let startTap = UIAction { _ in
            
            let gameVC = GameViewController()
            gameVC.modalPresentationStyle = .fullScreen
            self.present(gameVC, animated: true)
        }
        
        let ans = UIAction { _ in
            let gameVC = QuestionsViewController()
            gameVC.modalPresentationStyle = .fullScreen
            self.present(gameVC, animated: true)
        }
        
        mainView.allAnswers.addAction(ans, for: .touchUpInside)
        mainView.starButton.addAction(startTap, for: .touchUpInside)
    }
}
