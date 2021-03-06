//
//  QuizBrain.swift
//  SwiftCards
//
//  Created by sun on 2/23/21.
//

import Foundation







struct QuizBrain {
    
    let quiz = [
        
        Question(q: "How do you declare a Variable?", a: ["Variable numberOfChickens = 5", "var numberOfCanonBalls = 10", "let numberOfShoes == 5"], ca: "var numberOfCanonBalls = 10"),
        Question(q: "Which of the following is a declaration of a constant?", a: ["var five = 5", "const = 5", "let five = 5"], ca: "let five = 5"),
        Question(q: "What is the command to print a string to the console?",a: ["printf(“Hello World”);", "print(“Hello World”)", "print(Hello World)"], ca: "print(“Hello World”)"),
        Question(q: "A constant or variable must have the same type as the value you want to assign it.", a: ["True", "Only if it is marked explicitly", "False"], ca: "True"),
        Question(q: "In Swift; constant to variable is the same as immutable to mutable", a: ["False", "Only if it is marked explicitly", "True"], ca: "True"),
        Question(q: "Identify: shoppingList = []", a: ["This is a empty array", "This is a empty dictionary", "This is a variable set to nil"], ca: "This is a empty array"),
        Question(q: "Identify: occupations = [:]", a: ["This is a empty array", "This is a empty dictionary", "This is a constant set to nil"], ca: "This is a empty dictionary"),
        
        
        ]
    
    
    var questionNumber = 0
    var score = 0
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    func getAnswerText1() -> String {
        return quiz[questionNumber].answer[0]
    }
    func getAnswerText2() -> String {
        return quiz[questionNumber].answer[1]
    }
    func getAnswerText3() -> String {
        return quiz[questionNumber].answer[2]
    }
    
    
    func getProgress() -> Float {
        let progress = Float(questionNumber + 1) / Float(quiz.count)
        return progress
    }
    
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count{
            questionNumber += 1
        }else {
            questionNumber = 0
            score = 0
        }
    }
    
    func getScore() -> Int {
         return score
    }

    
    mutating func checkAnswer (_ userAnswer: String) -> Bool {
        
        if userAnswer == quiz[questionNumber].correctAnswer {
            score += 1
        return true
        }  else {return false}
    
 
        
        
        
        
    }
    









}



