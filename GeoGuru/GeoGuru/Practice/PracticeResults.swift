//
//  ScoresPage.swift
//  GeoGuru
//
//  Created by Pranav Ramesh on 9/22/18.
//  Copyright © 2018 GeoGuru. All rights reserved.
//

import UIKit
class PracticeResults: UITableViewController {
    
    var questions: [[String]] = []
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "practiceResultsCell", for: indexPath) as! practiceResultsCell
        cell.question.text = questions[indexPath.row][0]
        cell.correctAnswer.text = questions[indexPath.row][1]
        if questions[indexPath.row].count > 2 {
            if #available(iOS 13.0, *) {
                cell.correctMark.image = UIImage(systemName: "xmark")
            } else {
                cell.correctMark.image = UIImage(named: "icons8-multiply-100")
            }
            cell.correctMark.tintColor = .systemRed
            var answers = ""
            for i in 2..<questions[indexPath.row].count {
                answers += "\(questions[indexPath.row][i]), "
            }
            answers.removeLast()
            answers.removeLast()
            cell.yourAnswer.text = answers
            cell.attempts.text = "\(questions[indexPath.row].count-1) attempts"
        } else {
            if #available(iOS 13.0, *) {
                cell.correctMark.image = UIImage(systemName: "checkmark")
            } else {
                cell.correctMark.image = UIImage(named: "icons8-checkmark-150")
            }
            cell.correctMark.tintColor = .systemGreen
            cell.yourAnswer.text = questions[indexPath.row][1]
            cell.attempts.text = "1 attempt"
        }
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if #available(iOS 13.0, *) {
            self.isModalInPresentation = true
        }
        questions = allTestQuestions
        for item in questions {print(item)}
    }
    @IBAction func goBack(_ sender: Any) {
        self.navigationController?.dismiss(animated: true, completion: {
            NotificationCenter.default.post(name: NSNotification.Name("dismissScreen"), object: nil)
        })
    }
    
}

class practiceResultsCell: UITableViewCell {
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var attempts: UILabel!
    @IBOutlet weak var correctAnswer: UILabel!
    @IBOutlet weak var yourAnswer: UILabel!
    @IBOutlet weak var correctMark: UIImageView!
    
}
