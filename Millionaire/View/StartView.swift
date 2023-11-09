//
//  StartView.swift
//  Millionaire
//
//  Created by Владислав Склюев on 18.05.2023.
//

import UIKit

class StartView: UIView {
    
    let bgImageView = UIImageView(image: UIImage(named: "fon"))
    let fon = UIImageView(image: UIImage(named: "LHc0RaYGI3U"))
    
    let titleGame = UILabel()
    
    let allAnswers = UIButton(im: UIImage(systemName: "gear")!)
    
    let starButton = UIButton(bg: UIColor(named: "startFon" )!, text: "Начать игру!")
    
    init() {
        super.init(frame: CGRect())
        backgroundColor = .purple
        setViews()
        setConstraints()
    }
    
    //Внешний вид элементов интерфейса
    func setViews() {
        
        titleGame.numberOfLines = 2
        titleGame.text = "Приветствуем вас в игре \n Кто хочет стать миллионером"
        titleGame.textAlignment = .center
        titleGame.layer.cornerRadius = 3
        titleGame.clipsToBounds = true
        titleGame.font = .boldSystemFont(ofSize: 20)
        titleGame.textColor = UIColor.white
        
        bgImageView.heightAnchor.constraint(equalToConstant: 500).isActive = true
        bgImageView.widthAnchor.constraint(equalToConstant: 700).isActive = true
        //bgImageView.layer.opacity = 50
        
    }
    
    //Расположение на экране элементов (геометрия)
    func setConstraints() {
        
        //1. Добавить элемент на View в качестве Subview
        addSubview(fon)
        addSubview(titleGame)
        addSubview(starButton)
        addSubview(bgImageView)
        addSubview(allAnswers)
        
        
        //2. Отключить маску автомасштабирования
        titleGame.translatesAutoresizingMaskIntoConstraints = false
        starButton.translatesAutoresizingMaskIntoConstraints = false
        bgImageView.translatesAutoresizingMaskIntoConstraints = false
        fon.translatesAutoresizingMaskIntoConstraints = false
        allAnswers.translatesAutoresizingMaskIntoConstraints = false
        
        //3. Задать констрейнты
        
        NSLayoutConstraint.activate([
            titleGame.topAnchor.constraint(equalTo: topAnchor, constant: 150),
            titleGame.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleGame.leftAnchor.constraint(equalTo: leftAnchor, constant: 20)
        ])
       
        NSLayoutConstraint.activate([
            starButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
            starButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            starButton.leftAnchor.constraint(equalTo: leftAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            bgImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            bgImageView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            fon.centerXAnchor.constraint(equalTo: centerXAnchor),
            fon.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            allAnswers.topAnchor.constraint(equalTo: topAnchor, constant: 50),
            allAnswers.rightAnchor.constraint(equalTo: rightAnchor, constant: -30)
        ])
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

import SwiftUI

struct StartViewProvider: PreviewProvider {
    
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    
    struct ContainerView: UIViewRepresentable {
        
        let view = StartView()
        
        func makeUIView(context: Context) -> some UIView {
            return view
        }
        
        func updateUIView(_ uiView: UIViewType, context: Context) { }
    }
    

}
