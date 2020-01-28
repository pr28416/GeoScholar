//
//  ChallengeViewer.swift
//  Alamofire
//
//  Created by Pranav Ramesh on 8/21/19.
//

import UIKit

class ChallengeViewer: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var questions: [[Any]] = []
    var categoryNames: [[String]] = []
    @IBOutlet var tableView: UIView!
    
    func getSectionTitles() -> [[String]] {
        var sectionTitles: [[String]] = []
        for item in questions {
            if !(sectionTitles.contains(categoryNames[Int(item[2] as! String)!])) {
                sectionTitles.append(categoryNames[Int(item[2] as! String)!])
            }
        }
        return sectionTitles
    }
    
    func getRowInfo(fromSection section: Int) -> [[Any]] {
        var rowInfo: [[Any]] = []
        for item in questions {
            if item[2] as! String == "\(section)" {
                rowInfo.append(item)
            }
        }
        return rowInfo
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return getSectionTitles().count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return getSectionTitles()[section][1]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return getRowInfo(fromSection: section).count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "challengeQuestionCell", for: indexPath) as! challengeQuestionCell
        let data = getRowInfo(fromSection: indexPath.section)
        cell.question.text = data[indexPath.row][0] as? String
        cell.correctAnswer.text = data[indexPath.row][1] as? String
        cell.yourAnswer.text = data[indexPath.row][3] as? String
        if (data[indexPath.row][1] as? String)!.lowercased() == (data[indexPath.row][3] as? String)!.lowercased() {
            if #available(iOS 13.0, *) {
                cell.correctIcon.image = UIImage(systemName: "checkmark")
            } else {
                cell.correctIcon.image = UIImage(named: "icons8-checkmark-150")
            }
            cell.correctIcon.tintColor = .systemGreen
        } else {
            if #available(iOS 13.0, *) {
                cell.correctIcon.image = UIImage(systemName: "xmark")
            } else {
                cell.correctIcon.image = UIImage(named: "icons8-multiply-100")
            }
            cell.correctIcon.tintColor = .systemRed
        }
        
        return cell
    }
    
    @IBOutlet weak var backImage: UIImageView!
    @IBOutlet weak var navBar: UINavigationBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if #available(iOS 13.0, *) {
            self.isModalInPresentation = true
        }
        navBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navBar.shadowImage = UIImage()
        
    }
    @IBAction func goBack(_ sender: Any) {
        self.dismiss(animated: true) {
            NotificationCenter.default.post(name: NSNotification.Name("dismissChallenge"), object: nil)
        }
    }
    
}

class challengeQuestionCell: UITableViewCell {
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var correctAnswer: UILabel!
    @IBOutlet weak var yourAnswer: UILabel!
    @IBOutlet weak var correctIcon: UIImageView!
    
}
