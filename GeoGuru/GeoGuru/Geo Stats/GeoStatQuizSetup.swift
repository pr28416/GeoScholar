//
//  GeoStatQuizSetup.swift
//  Alamofire
//
//  Created by Pranav Ramesh on 5/25/19.
//

import UIKit

class GeoStatQuizSetup: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.layer.masksToBounds = true
        tableView.layer.cornerRadius = 10
    }
    @IBOutlet var tableView: UITableView!
    
    let categories = ["Countries and Continents", "High and Low Points", "Length and Size of Landforms", "Length and Size of Landmarks", "Temperature Extremes", "North and South"]
    
    var selectedStats = String()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "statSelect", for: indexPath)
        cell.textLabel?.text = categories[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedStats = categories[indexPath.row]
        performSegue(withIdentifier: "startStatTest", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "startStatTest" {
            let VC = segue.destination as! StatTestView
            VC.category = selectedStats
            switch selectedStats {
            case "Countries and Continents": VC.questionDict = statCategories().countriesContinents
            case "High and Low Points": VC.questionDict = statCategories().countriesContinents
            case "Length and Size of Landforms": VC.questionDict = statCategories().lengthLandforms
            case "Length and Size of Landmarks": VC.questionDict = statCategories().lengthLandmarks
            case "Temperature Extremes": VC.questionDict = statCategories().tempExtremes
            case "North and South": VC.questionDict = statCategories().northSouth
            default: print("No selected stats."); break
            }
        }
    }

}
