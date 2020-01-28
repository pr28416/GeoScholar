//
//  ModeSelect.swift
//  GeoGuru
//
//  Created by Pranav and Keshav Ramesh on 9/3/18.
//  Copyright © 2018 GeoGuru. All rights reserved.
//

import UIKit

class ModeSelect: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet var startPractice: UIButton!
    @IBOutlet var multipleChoice: UIButton!
    @IBOutlet var pickerView: UIPickerView!
    
    @IBOutlet var backview: UIView!
    @IBOutlet var choiceLabel: UILabel!
    var sendName: String = "default"
    var questionNum: [String] = []
    var numChoiceStr: String = ""
    var numChoice: Int = 0
    var contentCollection = [[[String]]]()
    @IBOutlet var backImage: UIImageView!
    @IBOutlet var backBlur: UIVisualEffectView!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return questionNum[row]
//    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return questionNum.count
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView
    {
        let pickerLabel = UILabel()
        pickerLabel.textColor = UIColor.white
        pickerLabel.text = questionNum[row]
        pickerLabel.font = UIFont.systemFont(ofSize: 30)
        pickerLabel.textAlignment = NSTextAlignment.center
        return pickerLabel
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 45
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        numChoiceStr = questionNum[row]
        print("New numChoiceStr: \(numChoiceStr)")
        if sendName == "Country Capitals" {
            questionNum = ["All countries capitals", "50", "40", "30", "20", "10"]
            switch numChoiceStr {
            case "All countries capitals":
                numChoice = 196
            case "50":
                numChoice = 50
            case "40":
                numChoice = 40
            case "30":
                numChoice = 30
            case "20":
                numChoice = 20
            case "10":
                numChoice = 10
            default:
                numChoice = 196
            }
            print("new numChoice: \(numChoice)")
        } else if sendName == "U.S. State Capitals" {
            questionNum = ["All state capitals", "25", "20", "15", "10"]
            switch numChoiceStr {
            case "All state capitals":
                numChoice = 50
            case "25":
                numChoice = 25
            case "20":
                numChoice = 20
            case "15":
                numChoice = 15
            case "10":
                numChoice = 10
            default:
                numChoice = 50
            }
            print("new numChoice: \(numChoice)")
        } else {
            questionNum = ["10", "15", "20"]
            switch numChoiceStr {
            case "10":
                numChoice = 10
            case "15":
                numChoice = 15
            case "20":
                numChoice = 20
            default:
                numChoice = 10
            }
            print("new numChoice: \(numChoice)")
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        let titleData = questionNum[row]
        let myTitle = NSAttributedString(string: titleData, attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        
        return myTitle
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        startPractice.layer.cornerRadius = 10
        if segue.identifier == "typingTest" {
            let testController = segue.destination as! TestView
            testController.receiveContinents = sendName
            testController.receiveNumChoice = numChoice
            testController.contentCollection = contentCollection
        } else if segue.identifier == "multipleChoice" {
            let testController = segue.destination as! MCTestView
            testController.receiveNumChoice = numChoice
            testController.list = contentCollection[9]
            
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        choiceLabel.text = ""
        backview.layer.cornerRadius = 15
        pickerView.layer.cornerRadius = 10
        
        startPractice.layer.masksToBounds = true
        multipleChoice.layer.masksToBounds = true
        
        startPractice.layer.cornerRadius = 10
        multipleChoice.layer.cornerRadius = 10
        
        backImage.layer.masksToBounds = true
        backImage.layer.cornerRadius = 15
        backBlur.layer.masksToBounds = true
        backBlur.layer.cornerRadius = 15
        
        print("received from startscreen: \(sendName)")
        
        if sendName == "Multiple Choice" {
            startPractice.isHidden = true
            multipleChoice.isHidden = false
        } else {
            startPractice.isHidden = false
            multipleChoice.isHidden = true
        }
        
        if sendName == "Country Capitals" {
            questionNum = ["All countries capitals", "50", "40", "30", "20", "10"]
            switch numChoiceStr {
            case "All countries capitals":
                numChoice = 196
            case "50":
                numChoice = 50
            case "40":
                numChoice = 40
            case "30":
                numChoice = 30
            case "20":
                numChoice = 20
            case "10":
                numChoice = 10
            default:
                numChoice = 196
            }
            print("new numChoice: \(numChoice)")
        } else if sendName == "U.S. State Capitals" {
            questionNum = ["All state capitals", "25", "20", "15", "10"]
            switch numChoiceStr {
            case "All state capitals":
                numChoice = 50
            case "25":
                numChoice = 25
            case "20":
                numChoice = 20
            case "15":
                numChoice = 15
            case "10":
                numChoice = 10
            default:
                numChoice = 50
            }
            print("new numChoice: \(numChoice)")
        } else {
            questionNum = ["10", "15", "20"]
            switch numChoiceStr {
            case "10":
                numChoice = 10
            case "15":
                numChoice = 15
            case "20":
                numChoice = 20
            default:
                numChoice = 10
            }
            print("new numChoice: \(numChoice)")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func startPractice(_ sender: UIButton) {
        for item in contentCollection {
            if item.isEmpty || contentCollection.count != 17 {
                print("Don't commence")
                let alert = UIAlertController(title: "Questions haven't synced", message: "The questions have not synced from the cloud yet. Please try again later.", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "Go back", style: .default, handler: { (action) in
                    self.navigationController?.popViewController(animated: true)
                }))
                self.present(alert, animated: true, completion: nil)
                break
            }
        }
        performSegue(withIdentifier: "typingTest", sender: nil)
    }
    @IBAction func multipleChoice(_ sender: UIButton) {
        for item in contentCollection {
            if item.isEmpty || contentCollection.count != 17 {
                print("Don't commence")
                let alert = UIAlertController(title: "Questions haven't synced", message: "The questions have not synced from the cloud yet. Please try again later.", preferredStyle: .alert)
                
                alert.addAction(UIAlertAction(title: "Go back", style: .default, handler: { (action) in
                    self.navigationController?.popViewController(animated: true)
                }))
                self.present(alert, animated: true, completion: nil)
                break
            }
        }
        performSegue(withIdentifier: "multipleChoice", sender: nil)
        
    }
        
}
