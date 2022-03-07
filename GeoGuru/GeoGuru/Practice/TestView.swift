//
//  TestView.swift
//  GeoGuru
//
//  Created by Pranav and Keshav Ramesh on 9/4/18.
//  Copyright © 2018 GeoGuru. All rights reserved.
//

import UIKit
import PCLBlurEffectAlert
import AVFoundation

var allTestQuestions: [[String]] = []

class TestView: UIViewController, AVAudioPlayerDelegate {
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerField: UITextField!
    @IBOutlet var correctLabel: UILabel!
    @IBOutlet var changeAnswerButton: UIButton!
    @IBOutlet var nextButton: UIButton!
    @IBOutlet var submitButton: UIButton!
    @IBOutlet var emoji: UILabel!
    @IBOutlet var scoreBar: UIBarButtonItem!
    
    var player: AVAudioPlayer = AVAudioPlayer()
    var correctPlayer: String?
    var incorrectPlayer: String?
    var finishPlayer: String?
    
    var score: Int = 0
    var receiveContinents = ""
    var receiveNumChoice: Int = 0
    
    var allQuestions: [[String]] = []
    var questionDict: [[String]] = [[]]
    var initiateIndex: [String] = []
    var initIndexNum: Int = 0
    var randomQuestion: String = ""
    var randomAnswer: String = ""
    var previousQuestion: String = ""
    var previousAnswer: String = ""
    var prevIndexNum: Int = 0
    @IBOutlet weak var remainingQuestions: UILabel!
    
    var counter = 0.0
    var timer = Timer()
    var isPlaying = false
    
    var contentCollection = [[[String]]]()
    //--------------------------------------------------------------------------------//
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer()
        isPlaying = false
        counter = 0.0
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(UpdateTimer), userInfo: nil, repeats: true)
        NotificationCenter.default.addObserver(self, selector: #selector(dismissScreen), name: NSNotification.Name("dismissScreen"), object: nil)
        navBar.topItem?.title = receiveContinents
    }
    
    @objc func dismissScreen() {
//        self.navigationController?.popViewController(animated: true)
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func UpdateTimer() {
        counter = counter + 0.1
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        do {
            correctPlayer = Bundle.main.path(forResource: "right", ofType: "mp3")
            incorrectPlayer = Bundle.main.path(forResource: "wrong", ofType: "wav")
            finishPlayer = Bundle.main.path(forResource: "finish", ofType: "wav")
        }
        
        if #available(iOS 13.0, *) {
            self.isModalInPresentation = true
        }
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
        
        print(receiveContinents)
        
        switch receiveContinents {
        case "North America":
            questionDict = contentCollection[10]
        //            basicInfo[0].append("North America")
        case "South America":
            questionDict = contentCollection[13]
        //            basicInfo[0].append("South America")
        case "Asia":
            questionDict = contentCollection[2]
        //            basicInfo[0].append("Asia")
        case "Europe":
            questionDict = contentCollection[6]
        //            basicInfo[0].append("Europe")
        case "Africa":
            questionDict = contentCollection[0]
        //            basicInfo[0].append("Africa")
        case "Australia":
            questionDict = contentCollection[3]
        //            basicInfo[0].append("Australia")
        case "Antarctica":
            questionDict = contentCollection[1]
        //            basicInfo[0].append("Antarctica")
        case "United States":
            questionDict = contentCollection[14]
        //            basicInfo[0].append("United States")
        case "Physical Geography":
            questionDict = contentCollection[11]
        //            basicInfo[0].append("Physical Geography")
        case "Cultural Geography":
            questionDict = contentCollection[4]
        //            basicInfo[0].append("Cultural Geography")
        case "Economic Geography":
            questionDict = contentCollection[5]
        //            basicInfo[0].append("Economic Geography")
        case "Political Geography":
            questionDict = contentCollection[12]
        //            basicInfo[0].append("Political Geography")
        case "Historical Geography":
            questionDict = contentCollection[7]
        //            basicInfo[0].append("Historical Geography")
        case "Assorted":
            questionDict = contentCollection[8]
        //            basicInfo[0].append("Miscellaneous")
        case "Country Capitals":
            questionDict = contentCollection[15]
        //            basicInfo[0].append("Country Capitals")
        case "U.S. State Capitals":
            questionDict = contentCollection[16]
        //            basicInfo[0].append("US State Capitals")
        default:
            questionDict = [[]]
            //            basicInfo[0].append("No Category")
        }
        
        //        if questionDict.count <= 0 || questionDict.isEmpty {
        //            let noConnectivityAlert = PCLBlurEffectAlertController(title: "No connectivity", message: "We have encountered an error. GeoGuru was unsuccessful in connecting to the database to receive questions. Try again later.", effect: UIBlurEffect(style: .dark), style: .alert)
        //
        //            let goBackButton = PCLBlurEffectAlertAction(title: "Return to Practice", style: .default, handler: { action in
        //
        //                self.performSegue(withIdentifier: "errorSendBackTV", sender: self)
        //            })
        //
        //            noConnectivityAlert.configure(titleColor: UIColor.white)
        //            noConnectivityAlert.configure(messageColor: UIColor.white)
        //            noConnectivityAlert.configure(cornerRadius: 20)
        //
        //            noConnectivityAlert.addAction(goBackButton)
        //            self.present(noConnectivityAlert, animated: true)
        
        //        } else {
        questionDict = getRandom(category: questionDict)
        //            let randomChoose = questionDict.count
        //        print(randomChoose)
        
        initIndexNum = randomQuestion(array: questionDict)
        initiateIndex = questionDict[initIndexNum]
        randomQuestion = initiateIndex[0]
        randomAnswer = initiateIndex[1]
        
        
        changeAnswerButton.isHidden = true
        scoreBar.title = "Score: \(score)"
        scoreBar.setTitleTextAttributes([
            NSAttributedString.Key.font: UIFont(name: "segoeui", size: 17)!,
        ], for: .normal)
        
        questionLabel.text = randomQuestion
        correctLabel.text = ""
        
//        nextButton.layer.cornerRadius = 10
//        submitButton.layer.cornerRadius = 10
        submitButton.layer.borderWidth = 1
        submitButton.layer.borderColor = UIColor(red: 112/255, green: 111/255, blue: 112/255, alpha: 1).cgColor
        nextButton.layer.borderWidth = 1
        nextButton.layer.borderColor = UIColor(red: 112/255, green: 111/255, blue: 112/255, alpha: 1).cgColor
        nextButton.isHidden = true
        answerField.isHidden = false
        submitButton.isHidden = false
        emoji.text = "😜"
        remaining()
        navBar?.setBackgroundImage(UIImage(), for: .default)
        navBar.shadowImage = UIImage()
    }
    @IBOutlet weak var navBar: UINavigationBar!
    
    //--------------------------------------------------------------------------------//
    
    @IBAction func changeAnswerClicked(_ sender: UIButton) {
        
        //        for i in 0..<allQuestions.count {
        //            if allQuestions[i][0] == questionDict[prevIndexNum][0] {
        //                if !(allQuestions[i].count-2 == 1) {
        //                    allQuestions[i].removeLast()
        //                    break
        //                }
        //            }
        //        }
        
        wrongQuestions.removeLast()
        //        moreDetails.removeLast()
        checkIfQuestionExistsWhenCorrect(question: previousQuestion, set: wrongQuestions)
        changeAnswerButton.isHidden = true
        questionDict.remove(at: prevIndexNum)
        
        if questionDict.count <= 0 {
            endTest()
            return
        } else {
            initIndexNum = randomQuestion(array: questionDict)
            initiateIndex = questionDict[initIndexNum]
            randomQuestion = initiateIndex[0]
            randomAnswer = initiateIndex[1]
            
            questionLabel.text = randomQuestion
            nextButton.isHidden = true
            answerField.isHidden = false
            submitButton.isHidden = false
            correctLabel.text = ""
            emoji.text = "😀"
        }
        remaining()
    }
    
    func remaining() {
        if questionDict.count == 1 {
            remainingQuestions.text = "\(questionDict.count) remaining question"
        } else {
            remainingQuestions.text = "\(questionDict.count) remaining questions"
        }
    }
    
    //--------------------------------------------------------------------------------//
    var given = ""
    
    @IBAction func nextClicked(_ sender: UIButton) {
        for i in 0..<allQuestions.count {
            if allQuestions[i][0] == questionDict[initIndexNum][0] {
                allQuestions[i].append(given)
                break
            }
        }
        initIndexNum = randomQuestion(array: questionDict)
        initiateIndex = questionDict[initIndexNum]
        randomQuestion = initiateIndex[0]
        randomAnswer = initiateIndex[1]
        
        questionLabel.text = randomQuestion
        nextButton.isHidden = true
        correctLabel.text = ""
        changeAnswerButton.isHidden = true
        answerField.isHidden = false
        submitButton.isHidden = false
        
        remaining()
    }
    
    @IBAction func goBack(_ sender: Any) {
        let alert = UIAlertController(title: "Confirm exit", message: "Are you sure you want to exit?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Exit", style: .destructive, handler: { (action) in
            self.dismissScreen()
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    //--------------------------------------------------------------------------------//
    
    @IBAction func submitPressed(_ sender: UIButton) {
        
        //        self.view.endEditing(true)
        
        if questionDict.count > 0 {
            
            
            let givenAnswer = answerField.text?.lowercased()
            
            if givenAnswer?.count != 0 {
                if givenAnswer == randomAnswer.lowercased() {
                    correctLabel.text = "Correct!"
                    emoji.text = "😀"
                    
                    try? player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: correctPlayer!) as URL)
                    player.play()
                    
                    if questionDict.count > 0 {
                        
                        prevIndexNum = initIndexNum
                        questionDict.remove(at: initIndexNum)
                        
                        remaining()
                        
                        if questionDict.count > 0 {
                            previousQuestion = randomQuestion
                            previousAnswer = randomAnswer
                            
                            checkIfQuestionExistsWhenCorrect(question: previousQuestion, set: wrongQuestions)
                            changeAnswerButton.isHidden = true
                            
                            initIndexNum = randomQuestion(array: questionDict)
                            initiateIndex = questionDict[initIndexNum]
                            randomQuestion = initiateIndex[0]
                            randomAnswer = initiateIndex[1]
                            questionLabel.text = randomQuestion
                            
                        } else {
                            checkIfQuestionExistsWhenCorrect(question: randomQuestion, set: wrongQuestions)
                            endTest()
                            return
                        }
                        
                    } else if questionDict.count <= 0 {
                        print("test quiz all done!")
                        endTest()
                        return
                    }
                    
                } else {
                    correctLabel.text = "Incorrect. The correct answer was: \(randomAnswer)"
                    given = givenAnswer!
                    emoji.text = "😓"
                    
                    try? player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: incorrectPlayer!) as URL)
                    player.play()
                    
                    prevIndexNum = initIndexNum
                    previousQuestion = randomQuestion
                    previousAnswer = randomAnswer
                    
                    
                    
                    
                    checkIfQuestionExistsWhenIncorrect(question: previousQuestion)
                    
                    changeAnswerButton.isHidden = false
                    changeAnswerButton.setTitle("Fix: I was correct!", for: .normal)
                    
                    nextButton.isHidden = false
                    answerField.isHidden = true
                    submitButton.isHidden = true
                }
                answerField.text = ""
            } else {
                if questionDict.count > -1 {
                    emoji.text = "🧐"
                    correctLabel.text = "You didn't submit anything! Try again."
                    changeAnswerButton.isHidden = true
                } else {
                    endTest()
                    return
                }
            }
        }
    }
    
    //--------------------------------------------------------------------------------//
    
    func randomQuestion(array: Array<[String]>) -> Int {
        let random = Int.random(in: 0...array.count-1)
        print("new random: \(random)")
        return random
    }
    
    //--------------------------------------------------------------------------------//
    
    var wrongQuestions = [String]()
    var setScore: Double = 0
    var scoreChange: Double = 10
    
    func checkIfQuestionExistsWhenCorrect(question: String, set: [String]){
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
        print("Score is now: \(setScore)")
        scoreBar.title = "Score: \(Int(setScore))"
    }
    
    func checkIfQuestionExistsWhenIncorrect(question: String) {
        for item in wrongQuestions {
            if question == item {
                print("Incorrect question is already in the set! You got it wrong again!")
            }
        }
        wrongQuestions.append(question)
    }
    
    
    
    func getRandom(category: [[String]]) -> [[String]] {
        allQuestions = []
        var arr: [Int] = []
        let hashset = NSMutableSet()
        var random: Int = 0
        print("numChoice used for func getRandom: \(receiveNumChoice)")
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
            allQuestions.append([category[item][0], category[item][1]])
        }
        return newQuestions
    }
    
    //--------------------------------------------------------------------------------//
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "practiceResults" {
            allTestQuestions = allQuestions
//            if let VC = segue.destination as? PracticeResults {
//                VC.questions = allQuestions
//            }
        }
    }
    
    func endTest() {
        
        print("Adding score: \(Int(setScore))")
        //        basicInfo[0].append("\(Int(setScore))")
        
        let date = Date(); let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        let minute = calendar.component(.minute, from: date)
        let day = calendar.component(.day, from: date)
        let month = calendar.component(.month, from: date)
        let info = "\(month) \(day), \(hour):\(minute)"
        print("Adding today's date: \(info)")
        //        basicInfo[0].append(info)
        
        timer.invalidate()
        let time = String(format: "%.1f", counter)
        print("Adding elapsed time: \(time)")
        //        basicInfo[0].append(time)
        let alert = UIAlertController(title: "Finished!", message: "Your score was \(Int(setScore)). Your elapsed time was \(time) seconds.", preferredStyle: .alert)
        
        let exitAction = UIAlertAction(title: "Exit", style: .default) { (action) in
            print("function endTest() received \"exit\" from the alert box.")
            self.navigationController?.popViewController(animated: true)
        }
        
        let seeAction = UIAlertAction(title: "View questions asked", style: .default) { (action) in
            self.performSegue(withIdentifier: "practiceResults", sender: nil)
        }
        
        alert.addAction(seeAction)
        alert.addAction(exitAction)
        self.present(alert, animated: true)
        
        try? player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: finishPlayer!) as URL)
        player.play()
        
    }
    
}
