//
//  GameViewController.swift
//  Millionaire
//
//  Created by Владислав Склюев on 23.05.2023.
//

import UIKit

class GameViewController: UIViewController {
    
    let mainView = GameView()
    
    let gameQuestion = Question.questions
    
    var currentNumQuest: Int = 0
    
    var sum: Int = 1000
    
    var currentAns: [String] {
        gameQuestion[currentNumQuest].allAns
    }
    
    var currentSum: Int = 0 {
        didSet {
            self.mainView.labelBank.text = "Банк: \(currentSum) руб."
        }
    }
    
    var currentQuest: Question {
        
        gameQuestion[currentNumQuest]
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = mainView
        addActions()
        setupUI()
        addActions()
    }
    
    func setupUI() {
        
        mainView.labelBank.text = "Банк: \(currentSum) руб." //+
        
        mainView.numQuestion.text = "\(currentNumQuest + 1)" //+
        
        mainView.titleQuestion.text = "\(currentQuest.titleQuestion)" //+
        
        mainView.sumQuestion.text = "Стоимость вопроса: \n\(currentQuest.costQuest) руб." //+
        
        let sh = currentAns.shuffled()
        
        mainView.answer1.setTitle(sh[0], for: .normal)
        mainView.answer2.setTitle(sh[1], for: .normal)
        mainView.answer3.setTitle(sh[2], for: .normal)
        mainView.answer4.setTitle(sh[3], for: .normal)
        
        print("Ответ 1 \(mainView.answer1.titleLabel!.text!)")
        print("Ответ 2 \(mainView.answer2.titleLabel!.text!)")
        print("Ответ 3 \(mainView.answer3.titleLabel!.text!)")
        print("Ответ 4 \(mainView.answer4.titleLabel!.text!)")

        print("Правильный ответ \(currentQuest.trueAnswer)")
        print("---------------------------")
        print("Исходные настройки вью:")
        print("Индекс вопроса - \(currentNumQuest), Все вопросы - \(currentAns), сумма - \(currentSum) структура вопросов - \(currentQuest)")
//        print(gameQuestion[currentNumQuest].allAns)
//        print(gameQuestion[currentNumQuest].newAnsShuf)
    }
    
    func updateUI() {
        
        
        mainView.noBurnSum.text = "Несгораемая сумма: \n                    \(sum) руб."
        mainView.numQuestion.text = "\(currentNumQuest + 1)"
        mainView.titleQuestion.text = "\(currentQuest.titleQuestion)"
        mainView.sumQuestion.text = "Стоимость вопроса: \n\(currentQuest.costQuest) руб."
        
        let sh = currentAns.shuffled()
        
        mainView.answer1.setTitle(sh[0], for: .normal)
        mainView.answer2.setTitle(sh[1], for: .normal)
        mainView.answer3.setTitle(sh[2], for: .normal)
        mainView.answer4.setTitle(sh[3], for: .normal)
            
        print("Правильный ответ \(currentQuest.trueAnswer)")
    }
    
    
    func addActions() {

        let calls = UIAction { _ in
            
            //1. Создаём алерт
            let alert = UIAlertController(title: "Внимание!",
                                          message: ("Вы позвонили другу, он предлагает ответ: \(self.currentQuest.trueAnswer)"),
                                          preferredStyle: .alert)
            //2. Создаём кнопки для алёрта
            let okAction = UIAlertAction(title: "ОК", style: .default)
            //3. Добавляем кнопки на алёрт
            alert.addAction(okAction)
            //4. Показываем алёрт пользователю
            self.present(alert, animated: true)
            return
            
        }
        
        
        let people = UIAction { _ in
            
            //1. Создаём алерт
            let alert = UIAlertController(title: "Внимание!",
                                          message: ("Варианты ответов из зала: \n\(self.currentQuest.trueAnswer) - 37% \n\(self.currentQuest.falseAnswer[1]) - 21% \n\(self.currentQuest.falseAnswer[0]) - 27% \n\(self.currentQuest.falseAnswer[2]) - 15%"),
                                          preferredStyle: .alert)
            //2. Создаём кнопки для алёрта
            let okAction = UIAlertAction(title: "ОК", style: .default)
            //3. Добавляем кнопки на алёрт
            alert.addAction(okAction)
            //4. Показываем алёрт пользователю
            self.present(alert, animated: true)
            return
        }
        
        
        let percent = UIAction { _ in
            
            //1. Создаём алерт
            let alert = UIAlertController(title: "Внимание!",
                                          message: ("Оставляем два ответа: \n\(self.currentQuest.trueAnswer) \n\(self.currentQuest.falseAnswer[Int.random(in: 0...2)])"),
                                          preferredStyle: .alert)
            //2. Создаём кнопки для алёрта
            let okAction = UIAlertAction(title: "ОК", style: .default)
            //3. Добавляем кнопки на алёрт
            alert.addAction(okAction)
            //4. Показываем алёрт пользователю
            self.present(alert, animated: true)
            return
        }
        
        
        let exitTap = UIAction { _ in
            let alert = UIAlertController(title: "Внимание!",
                                          message: "Вы уверены, что хотите закончить игру?",
                                          preferredStyle: .actionSheet)
            let yesAction = UIAlertAction(title: "Да", style: .destructive) { _ in
                self.dismiss(animated: true)
            }
            
            let noAction = UIAlertAction(title: "Нет", style: .cancel)
            
            alert.addAction(yesAction)
            alert.addAction(noAction)
            self.present(alert, animated: true)
        }
        
        
        let check1 = UIAction {  _ in
            
            guard self.mainView.answer1.titleLabel!.text! == self.currentQuest.trueAnswer else {
                //falseAnswer()
                return
            }
            updateQuest()
        }
        
        let check2 = UIAction { _ in
            
            guard self.mainView.answer2.titleLabel!.text! == self.currentQuest.trueAnswer else {
                //falseAnswer()
                return
            }
            updateQuest()
        }
        
        let check3 = UIAction { _ in
            
            guard self.mainView.answer3.titleLabel!.text! == self.currentQuest.trueAnswer else {
                //falseAnswer()
                return
            }
            updateQuest()
        }
        
        let check4 = UIAction { _ in
            
            guard self.mainView.answer4.titleLabel!.text! == self.currentQuest.trueAnswer else {
                //falseAnswer()
                return
            }
            updateQuest()
        }
        
        func finish() {
            //1. Создаём алерт
            let alert = UIAlertController(title: "Поздравляем!",
                                          message: ("Вы Миллионер!"),
                                          preferredStyle: .alert)
            //2. Создаём кнопки для алёрта
            let okAction = UIAlertAction(title: "ОК", style: .default)
            //3. Добавляем кнопки на алёрт
            alert.addAction(okAction)
            //4. Показываем алёрт пользователю
            self.present(alert, animated: true)
            return
        }
        
        func updateQuest() {
            self.currentSum += self.currentQuest.costQuest
            guard (currentNumQuest + 1) != gameQuestion.count else {
                finish()
                return
            }
            self.currentNumQuest += 1
            self.updateUI()
            switch currentNumQuest {
            case 2,4,6,8,10,12,14:
                sum = currentQuest.costQuest
            default:
                break
            }
            
        }
        
        func falseAnswer() {
            //1. Создаём алерт
            let alert = UIAlertController(title: "Ёлки-палки!!",
                                          message: ("Это неправильный ответ!"),
                                          preferredStyle: .alert)
            //2. Создаём кнопки для алёрта
            let okAction = UIAlertAction(title: "ОК", style: .default)
            //3. Добавляем кнопки на алёрт
            alert.addAction(okAction)
            //4. Показываем алёрт пользователю
            self.present(alert, animated: true)
            return
        }
        

        
        mainView.answer1.addAction(check1, for: .touchUpInside)
        mainView.answer2.addAction(check2, for: .touchUpInside)
        mainView.answer3.addAction(check3, for: .touchUpInside)
        mainView.answer4.addAction(check4, for: .touchUpInside)
        mainView.exitButton.addAction(exitTap, for: .touchUpInside)
        mainView.buttonCalls.addAction(calls, for: .touchUpInside)
        mainView.buttonPercent.addAction(percent, for: .touchUpInside)
        mainView.buttonHelpPeople.addAction(people, for: .touchUpInside)
        
        }
}
