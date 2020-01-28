//
//  ChallengeGame.swift
//  GeoGuru
//
//  Created by Pranav Ramesh on 9/29/18.
//  Copyright © 2018 GeoGuru. All rights reserved.
//

import UIKit
import PCLBlurEffectAlert

class ChallengeGame: UIViewController {
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerField: UITextField!
    @IBOutlet var submitButton: UIButton!
    @IBOutlet var emoji: UILabel!
    @IBOutlet var nextButton: UIButton!
    @IBOutlet var correctLabel: UILabel!
    @IBOutlet var fixAnswerLabel: UIButton!
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet weak var questionBackView: UIView!
    @IBOutlet weak var backBlur: UIVisualEffectView!
    @IBOutlet weak var remainingQuestions: UILabel!
    
    var contentCollection = [[[String]]]()
    var categoryNames: [[String]] = []
    
    var questionAmt: Int = 0
    var questionDict: [[String]] = []
    var currentQuestion = String()
    var currentAnswer = String()
    var random: Int = 0
    var score: Int = 0
    var allQuestionsAsked: [[Any]] = []
    
    let happyEmojis: [String] = ["😀", "😉", "😝", "🤩", "😎", "🤑", "🐵", "🦊", "😇"]
    
    let sadEmojies: [String] = ["🤨", "😫", "😢", "😡", "💩", "👽", "😳", "😑", "😱", "😭", "😰", "😤", "😬", "😒", "🧐", "😣", "🤯"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if #available(iOS 13.0, *) {
            questionBackView.layer.borderColor = UIColor.systemTeal.cgColor
        } else {
            questionBackView.layer.borderColor = UIColor(red: 119/255, green: 198/255, blue: 245/255, alpha: 1).cgColor
        }
        
        questionBackView.layer.borderWidth = 5
        NotificationCenter.default.addObserver(self, selector: #selector(dismissChallenge), name: NSNotification.Name("dismissChallenge"), object: nil)
    }
    
    @objc func dismissChallenge() {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if #available(iOS 13.0, *) {
            
            self.isModalInPresentation = true
        }
        backBlur.effect = UIBlurEffect(style: .dark)
                
        print("received questionAmt: \(questionAmt)")
        questionDict = getRandom()
        
        questionLabel.isHidden = false
        answerField.isHidden = false
        submitButton.isHidden = false
        emoji.text = "😜"
        nextButton.isHidden = true
        correctLabel.isHidden = true
        fixAnswerLabel.isHidden = true
        scoreLabel.isHidden = false
        
        random = Int.random(in: 0...questionDict.count-1)
        //        print("\nNew question: \(questionDict[random][0])\nNew answer: \(questionDict[random][1])\n")
        currentQuestion = questionDict[random][0]
        currentAnswer = questionDict[random][1]
        
        scoreLabel.text = "Score: 0"
        questionLabel.text = currentQuestion
        answerField.text = ""
        remainingQuestions.text = "\(questionDict.count) remaining questions"
    }
    
    var given = ""
    
    @IBAction func submitPressed(_ sender: UIButton) {
        let enteredAnswer = answerField.text
        if !((enteredAnswer?.isEmpty)! || enteredAnswer!.count == 0) {
            if !questionDict.isEmpty {
                given = enteredAnswer!
                if enteredAnswer?.lowercased() == currentAnswer.lowercased() {
                    correctLabel.isHidden = false
                    correctLabel.text = "Correct!"
                    emoji.text = happyEmojis[Int.random(in: 0...happyEmojis.count-1)]
                    score += 10
                    scoreLabel.text = "Score: \(score)"
                    allQuestionsAsked.append([questionDict[random][0], questionDict[random][1], questionDict[random][2], given])
                    questionDict.remove(at: random)
                    if questionDict.isEmpty {
                        endTest()
                        return
                    }
                    random = Int.random(in: 0...questionDict.count-1)
                    currentQuestion = questionDict[random][0]
                    currentAnswer = questionDict[random][1]
                    
                    questionLabel.text = currentQuestion
                    answerField.text = ""
                    numRemainingQuestions()
                } else {
                    correctLabel.isHidden = false
                    correctLabel.text = "Incorrect! The correct answer was \(currentAnswer)"
                    answerField.isEnabled = false
                    submitButton.isEnabled = false
                    nextButton.isHidden = false
//                    score -= 10
//                    if score < 0 {
//                        score = 0
//                    }
                    scoreLabel.text = "Score: \(score)"
                    fixAnswerLabel.isHidden = false
                    emoji.text = sadEmojies[Int.random(in: 0...sadEmojies.count-1)]
                }
            }
        } else {
            emoji.text = "🧐"
            correctLabel.isHidden = false
            correctLabel.text = "You didn't submit anything! Try again."
        }
        
    }
    
    @IBAction func fixAnswerClicked(_ sender: UIButton) {
        score += 10
        scoreLabel.text = "Score: \(score)"
        emoji.text = happyEmojis[Int.random(in: 0...happyEmojis.count-1)]
        
        allQuestionsAsked.append([questionDict[random][0], questionDict[random][1], questionDict[random][2], given])
        questionDict.remove(at: random)
        if questionDict.isEmpty {
            endTest()
            return
        }
        questionLabel.isHidden = false
        answerField.isHidden = false
        submitButton.isHidden = false
        nextButton.isHidden = true
        correctLabel.isHidden = true
        fixAnswerLabel.isHidden = true
        scoreLabel.isHidden = false
        answerField.isEnabled = true
        submitButton.isEnabled = true
        
        random = Int.random(in: 0...questionDict.count-1)
        currentQuestion = questionDict[random][0]
        currentAnswer = questionDict[random][1]
        
        questionLabel.text = currentQuestion
        answerField.text = ""
        numRemainingQuestions()
    }
    
    @IBAction func nextPressed(_ sender: Any) {
        allQuestionsAsked.append([questionDict[random][0], questionDict[random][1], questionDict[random][2], given])
        questionDict.remove(at: random)
        if questionDict.isEmpty {
            endTest()
            return
        }
        
        questionLabel.isHidden = false
        answerField.isHidden = false
        submitButton.isHidden = false
        nextButton.isHidden = true
        correctLabel.isHidden = true
        fixAnswerLabel.isHidden = true
        scoreLabel.isHidden = false
        answerField.isEnabled = true
        submitButton.isEnabled = true
        
        random = Int.random(in: 0...questionDict.count-1)
//        print("\nNew question: \(questionDict[random][0])\nNew answer: \(questionDict[random][1])\n")
        currentQuestion = questionDict[random][0]
        currentAnswer = questionDict[random][1]
        
        questionLabel.text = currentQuestion
        answerField.text = ""
        numRemainingQuestions()
    }
    
    func numRemainingQuestions() {
        if questionDict.count == 1 {
            remainingQuestions.text = "\(questionDict.count) remaining question"
        } else {
            remainingQuestions.text = "\(questionDict.count) remaining questions"
        }
    }
    
    func getRandom() -> [[String]] {
        var questionList: [[String]] = []
        allQuestionsAsked = []
        print("contentCollection count: \(contentCollection.count)")
        while questionList.count < questionAmt {
            let index = Int.random(in: 0..<contentCollection.count)
            let chosenCategory: [[String]] = contentCollection[index]
            if !(chosenCategory.count == 0) {
                let indexInsideCategory = Int.random(in: 0...chosenCategory.count-1)
                questionList.append([chosenCategory[indexInsideCategory][0], chosenCategory[indexInsideCategory][1], "\(index)"])
            }
        }
        print("questionList count: \(questionList.count)")
        for item in allQuestionsAsked {
            print("\(item[0]) --> \(item[1])")
        }
        return questionList
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showQuestions" {
            if let VC = segue.destination as? ChallengeViewer {
                VC.questions = allQuestionsAsked
                VC.categoryNames = categoryNames
            }
        }
    }
    
    @IBAction func exitClicked(_ sender: UIButton) {
        let alert = UIAlertController(title: "Confirm exit", message: "Are you sure you want to quit? Your score won't be saved.", preferredStyle: .alert)
        
        let exitAction = UIAlertAction(title: "Exit", style: .default, handler: { action in
            print("@IBAction func exitClicked received \"exit\" from the alert box.")
//            self.performSegue(withIdentifier: "finishChallenge", sender: nil)
            self.dismiss(animated: true, completion: nil)
            
        })
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        let subview = (alert.view.subviews.first?.subviews.first?.subviews.first!)! as UIView
        subview.tintColor = UIColor.white
        
        alert.addAction(exitAction)
        alert.addAction(cancelAction)
        self.present(alert, animated: true)
    }
    
    func endTest() {
        let alert = UIAlertController(title: "Finished!", message: "Your score was \(score).", preferredStyle: .alert)
        
        let exitAction = UIAlertAction(title: "Exit", style: .default, handler: { action in
            print("function endTest() received \"exit\" from the alert box.")
//            self.navigationController?.popViewController(animated: true)
            self.dismiss(animated: true, completion: nil)
            
        })
        let seeAction = UIAlertAction(title: "View questions", style: .default) { (action) in
            self.performSegue(withIdentifier: "showQuestions", sender: nil)
        }
        
        let subview = (alert.view.subviews.first?.subviews.first?.subviews.first!)! as UIView
        subview.tintColor = UIColor.white
        
        alert.addAction(seeAction)
        alert.addAction(exitAction)
        self.present(alert, animated: true)
        
//        try? player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: finishPlayer!) as URL)
//        player.play()
    }
}
