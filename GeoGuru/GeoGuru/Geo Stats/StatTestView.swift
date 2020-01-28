//
//  StatTestView.swift
//  Alamofire
//
//  Created by Pranav Ramesh on 5/25/19.
//

import UIKit

class StatTestView: UIViewController {
    
    var category = ""
    var questionDict = [[String()]]
    var currentQuestionSet = [String()]
    var currentQuestionIndex = Int()
    @IBOutlet var randBar: UIView!
    @IBOutlet var exitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.isHidden = true
        print(category)
        categoryName.text = "\(category)"
        
        choice1.layer.masksToBounds = true
        choice1.layer.cornerRadius = 5
        choice1.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        choice4.layer.masksToBounds = true
        choice4.layer.cornerRadius = 5
        choice4.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        randBar.layer.masksToBounds = true
        randBar.layer.cornerRadius = 5
        randBar.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
        
        exitButton.layer.masksToBounds = true
        exitButton.layer.cornerRadius = 5
        exitButton.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMaxXMaxYCorner]
        
        questionDict = randomOrder()
        remainingQuestions.text = "\(questionDict.count) remaining questions"
        askQuestion()
        
        if #available(iOS 13.0, *) {
            self.isModalInPresentation = true
            // Always adopt a light interface style.
            overrideUserInterfaceStyle = .light
        }
    }
    
    @IBOutlet var remainingQuestions: UILabel!
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var nextButton: UIButton!
    @IBOutlet var choice1: UIButton!
    @IBOutlet var choice2: UIButton!
    @IBOutlet var choice3: UIButton!
    @IBOutlet var choice4: UIButton!
    @IBOutlet var categoryName: UILabel!
    
    @IBAction func exitPressed(_ sender: UIButton) {
        let alert = UIAlertController(title: "Confirm exit", message: "Are you sure you want to leave? You have not finished the quiz yet!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Leave", style: .destructive, handler: { (action) in
            self.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "returnToStats" {
//            let button = sender as! UIButton
//            (segue as! OHCircleSegue).circleOrigin = button.center
//        }
//    }
    
    func askQuestion() {
        currentQuestionIndex = Int.random(in: 0..<questionDict.count)
        currentQuestionSet = questionDict[currentQuestionIndex]
        
        var splitSet = [currentQuestionSet[2], currentQuestionSet[3], currentQuestionSet[4], currentQuestionSet[5]]
        var a = [String]()
        let count = splitSet.count
        while a.count != count {
            let r = Int.random(in: 0..<splitSet.count)
            a.append(splitSet[r])
            splitSet.remove(at: r)
        }
        splitSet = a
        
        questionLabel.text = currentQuestionSet[0]
        choice1.setTitle(splitSet[0], for: .normal)
        choice2.setTitle(splitSet[1], for: .normal)
        choice3.setTitle(splitSet[2], for: .normal)
        choice4.setTitle(splitSet[3], for: .normal)
        
        choice1.setTitleColor(.black, for: .normal)
        choice2.setTitleColor(.black, for: .normal)
        choice3.setTitleColor(.black, for: .normal)
        choice4.setTitleColor(.black, for: .normal)
        
        choice1.backgroundColor = .white
        choice2.backgroundColor = .white
        choice3.backgroundColor = .white
        choice4.backgroundColor = .white
    }
    
    func randomOrder() -> [[String]] {
        var a = [[String]]()
        let count = questionDict.count
        while a.count != count {
            let r = Int.random(in: 0..<questionDict.count)
            a.append(questionDict[r])
            questionDict.remove(at: r)
        }
        return a
    }
    
    func checkAnswer(buttonClicked: UIButton, givenAnswer: String, correctAnswer: String) {
        
        choice1.isEnabled = false
        choice2.isEnabled = false
        choice3.isEnabled = false
        choice4.isEnabled = false
        
        let greenColor = UIColor(red: 95/255, green: 197/255, blue: 98/255, alpha: 1)
        switch correctAnswer {
        case choice1.titleLabel!.text!:
            choice1.setTitleColor(.white, for: .normal)
            choice1.backgroundColor = greenColor
        case choice2.titleLabel!.text!:
            choice2.setTitleColor(.white, for: .normal)
            choice2.backgroundColor = greenColor
        case choice3.titleLabel!.text!:
            choice3.setTitleColor(.white, for: .normal)
            choice3.backgroundColor = greenColor
        case choice4.titleLabel!.text!:
            choice4.setTitleColor(.white, for: .normal)
            choice4.backgroundColor = greenColor
        default: break
        }
        
        if givenAnswer != correctAnswer {
            buttonClicked.setTitleColor(.white, for: .normal)
            buttonClicked.backgroundColor = .init(red: 255/255, green: 105/255, blue: 96/255, alpha: 1)
        } else {
            questionDict.remove(at: currentQuestionIndex)
            remainingQuestions.text = "\(questionDict.count) remaining questions"
        }
        
        nextButton.isHidden = false
    }
    
    @IBAction func nextPressed(_ sender: UIButton) {
        if questionDict.isEmpty {
            let alert = UIAlertController(title: "Finished!", message: "You have finished this multiple choice session.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Return", style: .cancel, handler: { (action) in
                self.dismiss(animated: true, completion: nil)
            }))
            self.present(alert, animated: true, completion: nil)
        } else {
            askQuestion()
            nextButton.isHidden = true
            choice1.isEnabled = true
            choice2.isEnabled = true
            choice3.isEnabled = true
            choice4.isEnabled = true
        }
    }
    
    @IBAction func clickedChoice1(_ sender: UIButton) {
        checkAnswer(buttonClicked: choice1, givenAnswer: choice1.titleLabel!.text!, correctAnswer: currentQuestionSet[1])
    }
    @IBAction func clickedChoice2(_ sender: UIButton) {
        checkAnswer(buttonClicked: choice2, givenAnswer: choice2.titleLabel!.text!, correctAnswer: currentQuestionSet[1])
    }
    @IBAction func clickedChoice3(_ sender: UIButton) {
        checkAnswer(buttonClicked: choice3, givenAnswer: choice3.titleLabel!.text!, correctAnswer: currentQuestionSet[1])
    }
    @IBAction func clickedChoice4(_ sender: UIButton) {
        checkAnswer(buttonClicked: choice4, givenAnswer: choice4.titleLabel!.text!, correctAnswer: currentQuestionSet[1])
    }
    
}
