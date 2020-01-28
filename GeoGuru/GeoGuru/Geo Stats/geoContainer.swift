//
//  ViewController.swift
//  GeoGuru
//
//  Created by Pranav Ramesh on 5/24/19.
//  Copyright © 2019 GeoGuru. All rights reserved.
//

import UIKit

class geoContainer: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.layer.masksToBounds = true
        tableView.layer.cornerRadius = 10
        if #available(iOS 13.0, *) {
            // Always adopt a light interface style.
            overrideUserInterfaceStyle = .light
        }
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.layer.masksToBounds = true
        self.navigationController?.navigationBar.clipsToBounds = true
        self.navigationController?.navigationBar.layer.cornerRadius = 10
        self.navigationController?.navigationBar.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        NotificationCenter.default.addObserver(self, selector: #selector(takeQuiz), name: NSNotification.Name("takeQuiz"), object: nil)
    }
    
    @objc func takeQuiz() {
        performSegue(withIdentifier: "statQuiz", sender: nil)
    }
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        if let touch = touches.first {
//            let position = touch.location(in: view)
//            print(position)
//        }
//    }
    @IBOutlet var goHome: UIBarButtonItem!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "statQuiz" {
            
//            if let touch = sender as? UITouch {
//                (segue as! OHCircleSegue).circleOrigin = touch.location(in: view)
//            }
            
            
            let VC = segue.destination as! StatTestView
            VC.category = quizCategory
            switch quizCategory {
            case "Countries and Continents": VC.questionDict = statCategories().countriesContinents
            case "High and Low Points": VC.questionDict = statCategories().countriesContinents
            case "Length and Size of Landforms": VC.questionDict = statCategories().lengthLandforms
            case "Length and Size of Landmarks": VC.questionDict = statCategories().lengthLandmarks
            case "Temperature Extremes": VC.questionDict = statCategories().tempExtremes
            case "North and South": VC.questionDict = statCategories().northSouth
            default: print("No selected stats."); break
            }
//        } else if segue.identifier == "return1" {
//            (segue as! OHCircleSegue).circleOrigin = goHome.accessibilityFrame.origin
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UINavigationBar.appearance().tintColor = UIColor.purple
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        UINavigationBar.appearance().tintColor = UIColor.white
    }
    
    @IBOutlet var tableView: UIView!
}
