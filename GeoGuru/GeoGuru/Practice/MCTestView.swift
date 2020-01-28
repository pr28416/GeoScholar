//
//  MCTestView.swift
//  GeoGuru
//
//  Created by Pranav and Keshav Ramesh on 9/8/18.
//  Copyright © 2018 GeoGuru. All rights reserved.
//

import UIKit
import PCLBlurEffectAlert

class MCTestView: UIViewController {
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var choice1text: UIButton!
    @IBOutlet var choice2text: UIButton!
    @IBOutlet var nextButton: UIButton!
    @IBOutlet var correctLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var emoji: UILabel!
    
    var questionDict: [[String]] = []
    var initIndexNum: Int = 0
    var question: String = ""
    var choice1: String = ""
    var choice2: String = ""
    var actualAnswer: String = ""
    var score: Int = 0
    var receiveNumChoice: Int = 15
    var list = [[String]]()
    
    //--------------------------------------------------------------------------------//
    
    func getRandom(category: [[String]]) -> [[String]] {
        var arr: [Int] = []
        let hashset = NSMutableSet()
        var random: Int = 0
        while hashset.count < receiveNumChoice {
            random = Int.random(in: 0...category.count-1)
            hashset.add(random)
        }
        print("Hashset: \(hashset)")
        
        for item in hashset {
            arr.append(item as! Int)
        }
        print("Array: \(arr)")
        
        var newQuestions: [[String]] = []
        for item in arr {
            newQuestions.append(category[item])
        }
        return newQuestions
    }
    
    //--------------------------------------------------------------------------------//
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if #available(iOS 13.0, *) {
            self.isModalInPresentation = true
        }
        
        questionDict = list
        
        if questionDict.count <= 0 || questionDict.isEmpty {
            let noConnectivityAlert = PCLBlurEffectAlertController(title: "No connectivity", message: "We have encountered an error. GeoScholar was unsuccessful in connecting to the database to receive questions. Try again later.", effect: UIBlurEffect(style: .dark), style: .alert)
            
            let goBackButton = PCLBlurEffectAlertAction(title: "Return to Practice", style: .default, handler: { action in
                
                self.performSegue(withIdentifier: "errorSendBackMC", sender: self)
            })
            
            noConnectivityAlert.configure(titleColor: UIColor.white)
            noConnectivityAlert.configure(messageColor: UIColor.white)
            noConnectivityAlert.configure(cornerRadius: 20)
            
            noConnectivityAlert.addAction(goBackButton)
            self.present(noConnectivityAlert, animated: true)
        } else {
            if questionDict.count > 20 {
                questionDict = getRandom(category: questionDict)
            }
            initIndexNum = randomQuestion(array: questionDict)
            question = questionDict[initIndexNum][0]
            choice1 = questionDict[initIndexNum][1]
            choice2 = questionDict[initIndexNum][2]
            actualAnswer = questionDict[initIndexNum][3]
            
            questionLabel.text = question
            choice1text.setTitle(choice1, for: .normal)
            choice2text.setTitle(choice2, for: .normal)
            
            correctLabel.text = ""
            nextButton.isHidden = true
            choice1text.isHidden = false
            choice2text.isHidden = false
            scoreLabel.text = "Score: \(score)"
            
            emoji.text = "😜"
        }
    }
    
    //--------------------------------------------------------------------------------//
    
    @IBAction func choice1Pressed(_ sender: UIButton) {
//        print(choice1text.titleLabel!.text!)
        
        if questionDict.count > 0 {
            let givenAnswer = choice1text.titleLabel!.text!.lowercased()
//            print("\ngivenAnswer: \(givenAnswer)\ncorrectAnswer: \(actualAnswer)")
            
            if givenAnswer == actualAnswer.lowercased() {
                correctLabel.text = "Correct!"
                emoji.text = "😀"
                
                if questionDict.count > 0 {
                    questionDict.remove(at: initIndexNum)
                    
                    if questionDict.count > 0 {
                        
                        checkIfQuestionExistsWhenCorrect(question: question, set: wrongQuestions)
//                        score += 10
//                        scoreLabel.text = "Score: \(score)"
                        initIndexNum = randomQuestion(array: questionDict)
                        question = questionDict[initIndexNum][0]
                        choice1 = questionDict[initIndexNum][1]
                        choice2 = questionDict[initIndexNum][2]
                        actualAnswer = questionDict[initIndexNum][3]
                    } else {
                        checkIfQuestionExistsWhenCorrect(question: question, set: wrongQuestions)
                        endTest()
                        return
                    }
                    
                    questionLabel.text = question
                    choice1text.setTitle(choice1, for: .normal)
                    choice2text.setTitle(choice2, for: .normal)
                } else if questionDict.count <= 0 {
//                    score += 10
//                    scoreLabel.text = "Score: \(score)"
                    checkIfQuestionExistsWhenCorrect(question: question, set: wrongQuestions)
                    endTest()
                    return
                }
            } else {
                correctLabel.text = "Incorrect. The correct answer was: \(actualAnswer)"
                emoji.text = "😓"
                choice2text.isEnabled = false
                choice1text.isHidden = true
                nextButton.isHidden = false
                
                checkIfQuestionExistsWhenIncorrect(question: question)
//                score -= 1
//                if score < 0 {
//                    score = 0
//                }
//                scoreLabel.text = "Score: \(score)"
            }
        }
    }
    
    //--------------------------------------------------------------------------------//
    
    @IBAction func nextClicked(_ sender: UIButton) {
        correctLabel.text = ""
        choice1text.isEnabled = true
        choice2text.isEnabled = true
        choice1text.isHidden = false
        choice2text.isHidden = false
        
        initIndexNum = randomQuestion(array: questionDict)
        question = questionDict[initIndexNum][0]
        choice1 = questionDict[initIndexNum][1]
        choice2 = questionDict[initIndexNum][2]
        actualAnswer = questionDict[initIndexNum][3]
        
        questionLabel.text = question
        choice1text.setTitle(choice1, for: .normal)
        choice2text.setTitle(choice2, for: .normal)
        nextButton.isHidden = true
    }
    
    //--------------------------------------------------------------------------------//
    
    @IBAction func choice2Pressed(_ sender: UIButton) {
//        print(choice2text.titleLabel!.text!)
        
        if questionDict.count > 0 {
            let givenAnswer = choice2text.titleLabel!.text!.lowercased()
//            print("\ngivenAnswer: \(givenAnswer)\ncorrectAnswer: \(actualAnswer)")
            
            if givenAnswer == actualAnswer.lowercased() {
                correctLabel.text = "Correct!"
                emoji.text = "😀"
                
                if questionDict.count > 0 {
                    questionDict.remove(at: initIndexNum)
                    
                    if questionDict.count > 0 {
                        checkIfQuestionExistsWhenCorrect(question: question, set: wrongQuestions)
//                        score += 10
//                        scoreLabel.text = "Score: \(score)"
                        
                        initIndexNum = randomQuestion(array: questionDict)
                        question = questionDict[initIndexNum][0]
                        choice1 = questionDict[initIndexNum][1]
                        choice2 = questionDict[initIndexNum][2]
                        actualAnswer = questionDict[initIndexNum][3]
                    } else {
                        checkIfQuestionExistsWhenCorrect(question: question, set: wrongQuestions)
                        endTest()
                        return
                    }
                    
                    questionLabel.text = question
                    choice1text.setTitle(choice1, for: .normal)
                    choice2text.setTitle(choice2, for: .normal)
                } else if questionDict.count <= 0 {
//                    score += 10
//                    scoreLabel.text = "Score: \(score)"
                    checkIfQuestionExistsWhenCorrect(question: question, set: wrongQuestions)
                    endTest()
                    return
                }
            } else {
                correctLabel.text = "Incorrect. The correct answer was: \(actualAnswer)"
                emoji.text = "😓"
                choice1text.isEnabled = false
                choice2text.isHidden = true
                nextButton.isHidden = false
                
                checkIfQuestionExistsWhenIncorrect(question: question)
//                score -= 1
//                if score < 0 {
//                    score = 0
//                }
//                scoreLabel.text = "Score: \(score)"
            }
        }
    }
    
    //--------------------------------------------------------------------------------//
    
    func randomQuestion(array: [Any]) -> Int {
        let random = Int.random(in: 0...array.count-1)
        print("new random: \(random)")
        return random
    }
    
    //--------------------------------------------------------------------------------//
    
    var wrongQuestions = [String]()
    var setScore: Double = 00
    var scoreChange: Double = 10
    
    func checkIfQuestionExistsWhenCorrect(question: String, set: [String]) -> [String] {
        scoreChange = 10
        for item in set {
//            print("\nComparing index: \(item)")
//            print("Comparing question: \(question)")
            if question == item { // If the same incorrect question is found in the wrongQuestions set
                scoreChange = ceil(scoreChange/2)
//                print("The question answered correctly already exists in the set, so the scoreChange is now \(scoreChange)")
                
            }
        }
        setScore += scoreChange
//        print("Score is now: \(setScore)")
        scoreLabel.text = "Score: \(Int(setScore))"
        return set
    }
    
    func checkIfQuestionExistsWhenIncorrect(question: String) -> [String] {
        for item in wrongQuestions {
            if question == item {
//                print("Incorrect question is already in the set! You got it wrong again!")
            }
        }
        wrongQuestions.append(question)
        return wrongQuestions
    }
    
    //--------------------------------------------------------------------------------//
    
    func endTest() {
//        setScore += 10
//        scoreLabel.text = "Score: \(Int(setScore))"
//        checkIfQuestionExistsWhenCorrect(question: question, set: wrongQuestions)
        var message = String()
        
        message = "Your score was \(score)."
        let alert = UIAlertController(title: "Finished!", message: message, preferredStyle: .actionSheet)
        
        let exitAction = UIAlertAction(title: "Exit", style: .default, handler: { action in
            print("function endTest() received \"exit\" from the alert box.")
            self.navigationController?.popViewController(animated: true)
        })
        
        let subview = (alert.view.subviews.first?.subviews.first?.subviews.first!)! as UIView
        alert.view.tintColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        subview.backgroundColor = UIColor(red: 5/225, green: 52/225, blue: 0/225, alpha: 1)
        subview.layer.cornerRadius = -10
        
        alert.addAction(exitAction)
        
        self.present(alert, animated: true)
    }
    
    //--------------------------------------------------------------------------------//
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
