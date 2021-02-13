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
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let questions = [
        "Kobe Bryant wore number 23 his rookie year in the NBA.",
        "Barack Obama was the 44th President of the United States.",
        "Netflix was founded by Warren Buffett."
    ]
    
    var questionPosition = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextQuestion()
    }
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        questionPosition += 1
        if (questionPosition < questions.count){
            nextQuestion()
        }
        
    }
    
    func nextQuestion(){
        questionLabel.text = questions[questionPosition]
    }
    

}

