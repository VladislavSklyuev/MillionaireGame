//
//  GameView.swift
//  Millionaire
//
//  Created by Владислав Склюев on 23.05.2023.
//

import UIKit

class GameView: UIView {
    
    let bgImageView2 = UIImageView(image: UIImage(named: "LHc0RaYGI3U"))
    
    let labelBank = UILabel()
    let noBurnSum = UILabel()
    let question = UILabel()
    let numQuestion = UILabel()
    
    let exitButton = UIButton(title: "Выйти из игры?", bg: UIColor(named: "ext")!)
    
    let buttonCalls = UIButton(bg: UIImage(systemName: "phone")!)
    let buttonPercent = UIButton(bg: UIImage(systemName: "percent")!)
    let buttonHelpPeople = UIButton(bg: UIImage(systemName: "person.3")!)
    
    let titleQuestion = UILabel()
    let sumQuestion = UILabel()
    
    let answer1 = UIButton(text: "Ответ 1", bgt: UIColor(named: "startFon")!)
    let answer2 = UIButton(text: "Ответ 1", bgt: UIColor(named: "startFon")!)
    let answer3 = UIButton(text: "Ответ 1", bgt: UIColor(named: "startFon")!)
    let answer4 = UIButton(text: "Ответ 1", bgt: UIColor(named: "startFon")!)
    
    
    
    
    init() {
        super.init(frame: CGRect())
        backgroundColor = .white
        setViews()
        setConstraints()
    }
    
    //Внешний вид элементов интерфейса
    func setViews() {
        labelBank.text = "Банк: 2000 руб."
        //labelBank.backgroundColor = UIColor(named: "startFon")
        labelBank.layer.cornerRadius = 3
        labelBank.clipsToBounds = true
        labelBank.font = .boldSystemFont(ofSize: 15)
        labelBank.textColor = .white
        
        noBurnSum.text = "Несгораемая сумма: \n                    1000 руб."
        //noBurnSum.backgroundColor = UIColor(named: "startFon")
        noBurnSum.font = .boldSystemFont(ofSize: 15)
        noBurnSum.numberOfLines = 2
        noBurnSum.textColor = .white
        
        question.text = "вопрос"
        question.font = .boldSystemFont(ofSize: 18)
        question.textColor = .white
        question.numberOfLines = 2
        
        numQuestion.text = "6"
        numQuestion.font = .boldSystemFont(ofSize: 90)
        numQuestion.textColor = .white
        
        titleQuestion.text = "\(Question.questions[0].titleQuestion)"
        titleQuestion.textAlignment = .center
        titleQuestion.numberOfLines = 3
        titleQuestion.font = .boldSystemFont(ofSize: 20)
        titleQuestion.textColor = .white
        
        sumQuestion.text = "\(Question.questions[0].costQuest)"
        sumQuestion.textAlignment = .center
        sumQuestion.numberOfLines = 2
        sumQuestion.font = .systemFont(ofSize: 20)
        sumQuestion.textColor = .white
        
        buttonCalls.tintColor = .white
        
        buttonPercent.tintColor = .white
        
        buttonHelpPeople.tintColor = .white
        
    }
    
    //Расположение на экране элементов (геометрия)
    func setConstraints() {
        
        //1. Добавить элемент на View в качестве Subview
        addSubview(bgImageView2)
        addSubview(labelBank)
        addSubview(noBurnSum)
        
        addSubview(titleQuestion)
        addSubview(sumQuestion)
        
        addSubview(exitButton)
        
        
        let questionStack = UIStackView(arrangedSubviews: [numQuestion, question])
        
        questionStack.axis = .vertical
        questionStack.spacing = 2
        questionStack.alignment = .center
        //questionStack.backgroundColor = .cyan
        questionStack.layer.cornerRadius = 70
        
        let answerStack = UIStackView(arrangedSubviews: [answer1, answer2, answer3, answer4])

        answerStack.axis = .vertical
        answerStack.spacing = 12
        answerStack.alignment = .center
        
        let helpStack = UIStackView(arrangedSubviews: [buttonCalls, buttonPercent, buttonHelpPeople])
        
        helpStack.axis = .horizontal
        helpStack.spacing = 10
        helpStack.alignment = .center
        
        addSubview(questionStack)
        addSubview(answerStack)
        addSubview(helpStack)
                   
        //2. Отключить маску автомасштабирования
        labelBank.translatesAutoresizingMaskIntoConstraints = false
        noBurnSum.translatesAutoresizingMaskIntoConstraints = false
        
        questionStack.translatesAutoresizingMaskIntoConstraints = false
        
        titleQuestion.translatesAutoresizingMaskIntoConstraints = false
        
        sumQuestion.translatesAutoresizingMaskIntoConstraints = false
        
        helpStack.translatesAutoresizingMaskIntoConstraints = false
        
        answerStack.translatesAutoresizingMaskIntoConstraints = false
        
        exitButton.translatesAutoresizingMaskIntoConstraints = false
        
        bgImageView2.translatesAutoresizingMaskIntoConstraints = false
        
        //3. Задать констрейты
        NSLayoutConstraint.activate([
            labelBank.topAnchor.constraint(equalTo: topAnchor, constant: 130),
            labelBank.leftAnchor.constraint(equalTo: leftAnchor)
        ])
        
        NSLayoutConstraint.activate([
            noBurnSum.topAnchor.constraint(equalTo: topAnchor, constant: 130),
            noBurnSum.rightAnchor.constraint(equalTo: rightAnchor)
        ])
        
        NSLayoutConstraint.activate([
            questionStack.centerXAnchor.constraint(equalTo: centerXAnchor),
            questionStack.centerYAnchor.constraint(equalTo: numQuestion.centerYAnchor, constant: 20),
            questionStack.topAnchor.constraint(equalTo: topAnchor, constant: 190),
            questionStack.heightAnchor.constraint(equalToConstant: 140),
            questionStack.widthAnchor.constraint(equalToConstant: 140)
        ])
        
        NSLayoutConstraint.activate([
            titleQuestion.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -450),
            titleQuestion.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleQuestion.leftAnchor.constraint(equalTo: leftAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            sumQuestion.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -380),
            sumQuestion.centerXAnchor.constraint(equalTo: centerXAnchor),
            sumQuestion.leftAnchor.constraint(equalTo: leftAnchor, constant: 20)
        ])
        
        
        NSLayoutConstraint.activate([
            answerStack.centerXAnchor.constraint(equalTo: centerXAnchor),
            answerStack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -35),
            answerStack.leftAnchor.constraint(equalTo: leftAnchor, constant: 10),
        ])
        
        NSLayoutConstraint.activate([
            helpStack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -240),
            helpStack.centerXAnchor.constraint(equalTo: centerXAnchor),
        ])
        
        NSLayoutConstraint.activate([
            exitButton.topAnchor.constraint(equalTo: topAnchor, constant: 70),
            exitButton.leftAnchor.constraint(equalTo: leftAnchor)
        ])
        
        NSLayoutConstraint.activate([
            bgImageView2.centerXAnchor.constraint(equalTo: centerXAnchor),
            bgImageView2.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


import SwiftUI

struct GameViewProvider: PreviewProvider {
    
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewRepresentable {
        
        let view = GameView()
        
        func makeUIView(context: Context) -> some UIView {
            return view
        }
        
        func updateUIView(_ uiView: UIViewType, context: Context) { }
    }
    
}
