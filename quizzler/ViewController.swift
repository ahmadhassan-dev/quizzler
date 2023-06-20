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
    ["Two + Two is equals to Six?","False"],
    ["Four + One is equals to Five?","True"],
    ["One + One is equals to twelve","False"],
    ["Ten + Ten is equals to Twenty","True"],
    [
        "Four + Four is equals to Eight","True"
    ]
    ]
    
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[index][0]
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        var userAnswer = sender.currentTitle;
        var actualAnswer  = questions[index][1]
    
        if(index+1>=questions.capacity){
            index = 0
            questionLabel.text = questions[index][0]
            return
        }
        index = index + 1
        questionLabel.text = questions[index][0]
    }
    
}

