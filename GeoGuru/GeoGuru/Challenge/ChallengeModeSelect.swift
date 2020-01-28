//
//  ChallengeModeSelect.swift
//  GeoGuru
//
//  Created by Pranav Ramesh on 9/29/18.
//  Copyright © 2018 GeoGuru. All rights reserved.
//

import UIKit
import Firebase
import PCLBlurEffectAlert
import Alamofire

class ChallengeModeSelect: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet var databaseSyncIndicator: UIActivityIndicatorView!
    @IBOutlet var databaseStack: UIStackView!
    @IBOutlet var databaseSyncInfo: UILabel!
    
    var databaseHandler = DatabaseHandle()
    var ref: DatabaseReference!
    var canStartChallenge = false
    
    var contentCollection = [[[String()]]]
    
    @IBOutlet var questionSelect: UIPickerView!
    @IBOutlet var beginButton: UIButton!
    @IBOutlet var questionNumPicker: UIPickerView!
    
    let questionNum: [String] = ["20", "25", "30"]
    var numChoiceStr: String = ""
    var numChoice: Int = 0
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return questionNum[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return questionNum.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        numChoiceStr = questionNum[row]
    }
    
    //    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
    //        let titleData = questionNum[row]
    //        let myTitle = NSAttributedString(string: titleData, attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
    //
    //        return myTitle
    //    }
    
    func pickerView(_ pickerView: UIPickerView, attributedTitleForRow row: Int, forComponent component: Int) -> NSAttributedString? {
        let titleData = questionNum[row]
        let attributedString = NSAttributedString(string: titleData, attributes: [
            NSAttributedString.Key.foregroundColor : UIColor.white,
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 60)
        ])
        return attributedString
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView
    {
        let pickerLabel = UILabel()
        pickerLabel.textColor = UIColor.white
        pickerLabel.text = questionNum[row]
        pickerLabel.font = UIFont.systemFont(ofSize: 60)
        pickerLabel.textAlignment = NSTextAlignment.center
        return pickerLabel
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 60
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
//        switch numChoiceStr {
//        case "20":
//            numChoice = 20
//        case "25":
//            numChoice = 25
//        case "30":
//            numChoice = 30
//        default:
//            numChoice = 20
//        }
        numChoice = Int(numChoiceStr) ?? 20
        
        if segue.identifier == "startChallenge" {
            let challengeGame = segue.destination as! ChallengeGame
            challengeGame.questionAmt = numChoice
            let userDefaults = UserDefaults.standard
            if let postParsedData = userDefaults.object(forKey: "contentCollection") as? [[[String]]] {
                contentCollection = postParsedData
            }
            challengeGame.categoryNames = categoryNames
            challengeGame.contentCollection = contentCollection
        }
    }
    
    @IBAction func startChallengePressed(_ sender: UIButton) {
        if canStartChallenge == false {
            let noConnectivityAlert = PCLBlurEffectAlertController(title: "No connectivity", message: "We have encountered an error. GeoScholar is still attempting to receive questions from the server. Try again later.", effect: UIBlurEffect(style: .dark), style: .alert)
            
            let goBackButton = PCLBlurEffectAlertAction(title: "Return", style: .default, handler: nil)
            
            noConnectivityAlert.configure(titleColor: UIColor.white)
            noConnectivityAlert.configure(messageColor: UIColor.white)
            noConnectivityAlert.configure(cornerRadius: 20)
            
            noConnectivityAlert.addAction(goBackButton)
            self.present(noConnectivityAlert, animated: true)
        } else {
            performSegue(withIdentifier: "startChallenge", sender: (Any).self)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        beginButton.layer.cornerRadius = 10
    }
    
    var categoryNames: [[String]] = []
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        UserDefaults.standard.set(categoryNames, forKey: "categoryNames")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
        if usCapitals.isEmpty {
            databaseStack.isHidden = false
            databaseSyncIndicator.startAnimating()
            databaseSyncInfo.isHidden = false
            databaseSyncInfo.isEnabled = true
        }
        
        if contentCollection.count >= 17 {
            canStartChallenge = true
        }
        
        NetworkReachabilityManager()!.startListening()
        
        if Connectivity.isConnectedToInternet {
            print("YES - Internet is available.")
            NetworkReachabilityManager()!.stopListening()
            
        }
        let userDefaults = UserDefaults.standard
        if let postParsedData = userDefaults.object(forKey: "contentCollection") as? [[[String]]] {
            contentCollection = postParsedData
        }
        if let postParsedData = userDefaults.object(forKey: "categoryNames") as? [[String]] {
            categoryNames = postParsedData
        }
        
        ref = Database.database().reference()
        
        if contentCollection.count >= 15 {
            canStartChallenge = true
            categoryNames = [
                ["0", "Africa"],
                ["1", "Antarctica"],
                ["2", "Asia"],
                ["3", "Australia"],
                ["4", "Cultural Geography"],
                ["5", "Economic Geography"],
                ["6", "Europe"],
                ["7", "Historical Geography"],
                ["8", "Assorted"],
                ["9", "Multiple Choice"],
                ["10", "North America"],
                ["11", "Physical Geography"],
                ["12", "Political Geography"],
                ["13", "South America"],
                ["14", "United States"]
            ]
        }
        
        var i = 1
        
        var quickList: [[[String]]] = []
        
        databaseHandler = ref.child("Questions").observe(.childAdded, with: { (data) in
            let name: [[String]] = (data.value as? [[String]])!
            switch i {
            case 1:
                if myPurchasedCategories["Africa"] == true {
                    Africa = name
                    quickList.append(name)
                    if self.contentCollection.count < 15 {self.categoryNames.append(["\(quickList.count-1)", "Africa"])}
                }
                
            case 2:
                Antarctica = name
                quickList.append(name)
                if self.contentCollection.count < 15 {self.categoryNames.append(["\(quickList.count-1)", "Antarctica"])}
            case 3:
                if myPurchasedCategories["Asia"] == true {
                    Asia = name
                    quickList.append(name)
                    if self.contentCollection.count < 15 {self.categoryNames.append(["\(quickList.count-1)", "Asia"])}
                }
            case 4:
                if myPurchasedCategories["Australia"] == true {
                    Australia = name
                    quickList.append(name)
                    if self.contentCollection.count < 15 {self.categoryNames.append(["\(quickList.count-1)", "Australia"])}
                }
            case 5:
                if myPurchasedCategories["Cultural Geography"] == true {
                    CulturalGeography = name
                    quickList.append(name)
                    if self.contentCollection.count < 15 {self.categoryNames.append(["\(quickList.count-1)", "Cultural Geography"])}
                }
            case 6:
                if myPurchasedCategories["Economic Geography"] == true {
                    EconomicGeography = name
                    quickList.append(name)
                    if self.contentCollection.count < 15 {self.categoryNames.append(["\(quickList.count-1)", "Economic Geography"])}
                }
            case 7:
                if myPurchasedCategories["Europe"] == true {
                    Europe = name
                    quickList.append(name)
                    if self.contentCollection.count < 15 {self.categoryNames.append(["\(quickList.count-1)", "Europe"])}
                }
            case 8:
                if myPurchasedCategories["Historical Geography"] == true {
                    HistoricalGeography = name
                    quickList.append(name)
                    if self.contentCollection.count < 15 {self.categoryNames.append(["\(quickList.count-1)", "Historical Geography"])}
                }
            case 9:
                if myPurchasedCategories["Assorted"] == true {
                    Miscellaneous = name
                    quickList.append(name)
                    if self.contentCollection.count < 15 {self.categoryNames.append(["\(quickList.count-1)", "Assorted"])}
                }
            case 10:
                if myPurchasedCategories["Multiple Choice"] == true {
                    MultipleChoiceQuestions = name
                    quickList.append(name)
                    if self.contentCollection.count < 15 {self.categoryNames.append(["\(quickList.count-1)", "Multiple Choice"])}
                }
            case 11:
                if myPurchasedCategories["North America"] == true {
                    NorthAmerica = name
                    quickList.append(name)
                    if self.contentCollection.count < 15 {self.categoryNames.append(["\(quickList.count-1)", "North America"])}
                }
            case 12:
                if myPurchasedCategories["Physical Geography"] == true {
                    PhysicalGeography = name
                    quickList.append(name)
                    if self.contentCollection.count < 15 {self.categoryNames.append(["\(quickList.count-1)", "Physical Geography"])}
                }
            case 13:
                if myPurchasedCategories["Political Geography"] == true {
                    PoliticalGeography = name
                    quickList.append(name)
                    if self.contentCollection.count < 15 {self.categoryNames.append(["\(quickList.count-1)", "Political Geography"])}
                }
            case 14:
                if myPurchasedCategories["South America"] == true {
                    SouthAmerica = name
                    quickList.append(name)
                    if self.contentCollection.count < 15 {self.categoryNames.append(["\(quickList.count-1)", "South America"])}
                }
            case 15:
                UnitedStates = name
                quickList.append(name)
                if self.contentCollection.count < 15 {self.categoryNames.append(["\(quickList.count-1)", "United States"])}
            case 16:
                //                    countryCapitals = name
                break
            case 17:
                //                    usCapitals = name
                print(quickList[0])
                for item in quickList {
                    print(item.count)
                }
                self.contentCollection = quickList
                saveData(withData: self.contentCollection, id: "contentCollection")
                print("Done loading challenge questions")
            default:
                debugPrint("Could not register: \(i)")
            }
            
            i += 1
            
            if i == 17 {
                self.databaseStack.isHidden = true
                self.canStartChallenge = true
                self.databaseSyncIndicator.hidesWhenStopped = true
                self.databaseSyncIndicator.stopAnimating()
                self.databaseSyncInfo.isHidden = true
                self.databaseSyncInfo.isEnabled = false
                
                
            }
            
            
            
        })
    }
}
