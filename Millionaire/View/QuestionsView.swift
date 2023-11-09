//
//  QuestionsView.swift
//  Millionaire
//
//  Created by Владислав Склюев on 31.05.2023.
//

import UIKit

class QuestionsView: UIView {
    
    let questions = UILabel()
    
    let text = UILabel()
    
    let buttonBack = UIButton(im: UIImage(systemName: "arrowshape.turn.up.backward")!)
    
    init() {
        super.init(frame: CGRect())
        backgroundColor = .white
        setViews()
        setConstraints()
    }
    
    func setViews() {
        questions.backgroundColor = .clear
        questions.textAlignment = .left
        questions.numberOfLines = 25
        questions.textColor = .black
        questions.text = "1)\(Question.questions[0].titleQuestion) \n2)\(Question.questions[1].titleQuestion)\n3)\(Question.questions[2].titleQuestion)\n4)\(Question.questions[3].titleQuestion)\n5)\(Question.questions[4].titleQuestion)\n6)\(Question.questions[5].titleQuestion)\n7)\(Question.questions[6].titleQuestion)\n8)\(Question.questions[7].titleQuestion)\n9)\(Question.questions[8].titleQuestion)\n10)\(Question.questions[9].titleQuestion)\n11)\(Question.questions[10].titleQuestion)\n12)\(Question.questions[11].titleQuestion)\n13)\(Question.questions[12].titleQuestion)\n14)\(Question.questions[13].titleQuestion)\n15)\(Question.questions[14].titleQuestion)"
        
        text.textColor = .black
        text.text = "Игра будет состоять из следующих вопросов:"
        
        buttonBack.tintColor = .red
    }
    
    func setConstraints() {
        addSubview(questions)
        addSubview(text)
        addSubview(buttonBack)
        
        questions.translatesAutoresizingMaskIntoConstraints = false
        text.translatesAutoresizingMaskIntoConstraints = false
        buttonBack.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            questions.leftAnchor.constraint(equalTo: leftAnchor, constant: 20),
            questions.centerXAnchor.constraint(equalTo: centerXAnchor),
            questions.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            text.centerXAnchor.constraint(equalTo: centerXAnchor),
            text.topAnchor.constraint(equalTo: topAnchor, constant: 150)
        ])
        
        NSLayoutConstraint.activate([
            buttonBack.topAnchor.constraint(equalTo: topAnchor, constant: 60),
            buttonBack.rightAnchor.constraint(equalTo: rightAnchor, constant: -30)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}



import SwiftUI

struct QuestionsViewProvider: PreviewProvider {
    
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    
    struct ContainerView: UIViewRepresentable {
        
        let view = QuestionsView()
        
        func makeUIView(context: Context) -> some UIView {
            return view
        }
        
        func updateUIView(_ uiView: UIViewType, context: Context) { }
    }
    

}
