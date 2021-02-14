//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    @IBOutlet weak var choice3Button: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var questionBrain = QuestionBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        progressBar.progress = 0.0
        updateUI()
    }
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let isUserRight = questionBrain.checkAnswer(userAnswer)
        
        if isUserRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        questionBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false )
        
    }
    
    func updateAnswerChoices() {
        let answerChoices = questionBrain.getAnswerChoices()
        choice1Button.setTitle(answerChoices[0], for: .normal)
        choice2Button.setTitle(answerChoices[1], for: .normal)
        choice3Button.setTitle(answerChoices[2], for: .normal)
    }
    
    @objc func updateUI(){
        questionLabel.text = questionBrain.getQuestionText()
        updateAnswerChoices()
        progressBar.progress = questionBrain.getProgress()
        scoreLabel.text = "Score: \(questionBrain.getScore())"
        choice1Button.backgroundColor = UIColor.clear
        choice2Button.backgroundColor = UIColor.clear
        choice3Button.backgroundColor = UIColor.clear
        
    }
    
    
    

}

