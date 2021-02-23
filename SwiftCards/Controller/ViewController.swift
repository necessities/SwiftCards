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
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var Option1: UIButton!
    @IBOutlet weak var Option2: UIButton!
    @IBOutlet weak var Option3: UIButton!
    
    var quizBrain = QuizBrain()
    
    
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        
        
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)

    }
    
    
    
    
    @objc func updateUI() {
        
        questionLabel.text = quizBrain.getQuestionText()
        
        quizBrain.nextQuestion()
        
           scoreLabel.text = "TEST"
    }
    
    
    

}

