//
//  Cash.swift
//  Millionaire
//
//  Created by Владислав Склюев on 23.05.2023.
//

import Foundation

struct Question {
    
    var titleQuestion: String
    
    var trueAnswer: String
    
    var costQuest: Int
    
    var falseAnswer: [String]
    
    var numQuestion: Int
    
    static var questions: [Question] = [Question(titleQuestion: "Кто был первым в космосе?", trueAnswer: "Юрий Александрович Гагарин", costQuest: 500, falseAnswer: ["Джо Байден", "Герман Степанович Титов", "Нил Армстронг"], numQuestion: 1), Question(titleQuestion: "Атом состоит из ?", trueAnswer: "Протон, нейтрон, электрон", costQuest: 1000, falseAnswer: ["Пиропатрон, электрон, нейтрон", "Перрон, нейтрон, электрон", "Протон, нейтрон, электорат"], numQuestion: 2),
                                        Question(titleQuestion: "Луна это?", trueAnswer: "Спутник Земли", costQuest: 2000, falseAnswer: ["Большой камень", "Планета", "Звезда"], numQuestion: 3),
                                        Question(titleQuestion: "Как правильно называется ядовитый гриб?", trueAnswer: "Мухомор", costQuest: 3000, falseAnswer: ["Мрамор", "Измор", "Черномор"], numQuestion: 4),
                                        Question(titleQuestion: "ЧСС это?", trueAnswer: "Частота Cердечных Cокращений", costQuest: 5000, falseAnswer: ["Чувство Сильного Страха", "Частая Смена Стратегии", "Член Спортивных Состязаний"], numQuestion: 5),
                                        Question(titleQuestion: "Что тяжелее?", trueAnswer: "Цирконий", costQuest: 10000, falseAnswer: ["Углерод", "Магний", "Литий"], numQuestion: 6),
                                        Question(titleQuestion: "Какая валюта в Дании?", trueAnswer: "Крона", costQuest: 15000, falseAnswer: ["Песо", "Лира", "Евро"], numQuestion: 7),
                                        Question(titleQuestion: "Кто был Главой государства в Японии во время второй мировой войны?", trueAnswer: "Император Хирохито", costQuest: 25000, falseAnswer: ["Император Муцухито", "Император Акихито", "Император Ёсихито"], numQuestion: 8),
                                        Question(titleQuestion: "Как долго длилась Столетняя война?", trueAnswer: "116 лет", costQuest: 50000, falseAnswer: ["100 лет", "99 лет", "101 год"], numQuestion: 9),
                                        Question(titleQuestion: "В какой из следующих империй не было письменности?", trueAnswer: "Инки", costQuest: 100000, falseAnswer: ["Ацтеки", "Египтяне", "Римляне"], numQuestion: 10),
                                        Question(titleQuestion: "Наука, изучающая свойства фигур на плоскости?", trueAnswer: "Планиметрия", costQuest: 200000, falseAnswer: ["Стереометрия", "Тригоноиметрия", "Монометрия"], numQuestion: 11),
                                        Question(titleQuestion: "Что означает 'n' в формуле pv = nRT", trueAnswer: "Количество вещества в молях", costQuest: 400000, falseAnswer: ["Давление", "Мощность", "Скорость газа"], numQuestion: 12),
                                        Question(titleQuestion: "Кто расписывал потолок Сикстинской капеллы", trueAnswer: "Микеланджело", costQuest: 800000, falseAnswer: ["Пабло Пикассо", "Леонардо Да Винчи", "Винсет Ван Гог"], numQuestion: 13),
                                        Question(titleQuestion: "При какой температуре по Фарингейту замерзает вода?", trueAnswer: "32 градуса", costQuest: 1500000, falseAnswer: ["0 градусов", "- 23 градуса", "- 100 градусов"], numQuestion: 14),
                                        Question(titleQuestion: "Какая африканская страна раньше называлась Абиссинией", trueAnswer: "Эфиопия", costQuest: 3000000, falseAnswer: ["ЮАР", "Того", "Зимбабве"], numQuestion: 15)]
    
    var allAns: [String] {
        var arr = falseAnswer
        arr.append(trueAnswer)
        arr.shuffle()
        return arr
    }
    
//    var newAnsShuf: [String] {
//        allAns.shuffled()
//    }
    
}
