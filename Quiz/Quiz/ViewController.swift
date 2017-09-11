//
//  ViewController.swift
//  Quiz
//
//  Created by Robert Steiner on 9/11/17.
//  Copyright © 2017 Robert Steiner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questionAnswers: [(String, String)] = [("What is 7+7?", "14"), ("What is the capital of Vermont?", "Montpelier"), ("What is cognac made from?", "Grapes")]
    
    var currentQuestionIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        questionLabel.text = questionAnswers[currentQuestionIndex].0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showNextQuestion(_ sender: UIButton){
        currentQuestionIndex += 1
        if currentQuestionIndex == questionAnswers.count {
            currentQuestionIndex = 0
        }
        
        let question: String = questionAnswers[currentQuestionIndex].0
        questionLabel.text = question
        answerLabel.text = "???"
        
    }
    
    @IBAction func showAnswer(_ sender: UIButton){
        let answer: String = questionAnswers[currentQuestionIndex].1
        answerLabel.text = answer
    }

}

