//
//  ViewController.swift
//  quizzler
//
//  Created by mac on 20/06/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    
    let questions = [
        Question(question: "Two + Two is equals to Six?", value: "False"),
        Question(question: "Four + One is equals to Five?", value: "True"),
        Question(question: "Ten + Ten is equals to Twenty", value: "True")
    ]
    
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[index].question
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        var userAnswer = sender.currentTitle;
        var actualAnswer  = questions[index].value
    
        if(index+1>=questions.capacity){
            index = 0
            questionLabel.text = questions[index].question
            return
        }
        index = index + 1
        questionLabel.text = questions[index].question
    }
    
}

