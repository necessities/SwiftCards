//
//  ViewController.swift
//  SwiftCards
//
//  Created by sun on 2/23/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBAction func optionOne(_ sender: UIButton) {}
    @IBAction func optionTwo(_ sender: UIButton) {}
    @IBAction func OpyionThree(_ sender: UIButton) {}
    @IBOutlet weak var scoreLabel: UILabel!
    @IBAction func hintButton(_ sender: UIButton) {}

    
    
    @IBOutlet weak var Option1: UIButton!
    @IBOutlet weak var Option2: UIButton!
    @IBOutlet weak var Option3: UIButton!
    
    var quizBrain = QuizBrain()
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        
        Option1.setTitle(quizBrain.getAnswerText1(), for: .normal)
        Option2.setTitle(quizBrain.getAnswerText2(), for: .normal)
        Option3.setTitle(quizBrain.getAnswerText3(), for: .normal)
        
        
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer)

        if userGotItRight {
            print("Right")
        } else {
            print("Wrong")
        }
        
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)

    }
    
    
    
    
    @objc func updateUI() {
        
        questionLabel.text = quizBrain.getQuestionText()
        Option1.setTitle(quizBrain.getAnswerText1(), for: .normal)
        Option2.setTitle(quizBrain.getAnswerText2(), for: .normal)
        Option3.setTitle(quizBrain.getAnswerText3(), for: .normal)
        
        
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        progressBar.progress = quizBrain.getProgress()
        print(quizBrain.getProgress())
        
    }
    
    
    

}

