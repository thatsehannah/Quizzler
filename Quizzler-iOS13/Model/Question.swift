//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Elliot Hannah III on 2/13/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let choices: [String]
    let answer: String
    
    init(q: String, a: [String], correctAnswer: String) {
        self.text = q
        self.choices = a
        self.answer = correctAnswer
    }
    
}
