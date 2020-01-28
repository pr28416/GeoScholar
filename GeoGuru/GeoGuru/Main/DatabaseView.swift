//
//  DatabaseView.swift
//  GeoGuru
//
//  Created by Pranav Ramesh on 11/6/18.
//  Copyright © 2018 GeoGuru. All rights reserved.
//

import UIKit
import FirebaseCore
import FirebaseInstanceID
import Firebase
import FirebaseDatabase

class DatabaseView: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var tableView: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.textColor = UIColor.white
        cell.textLabel?.text = list[indexPath.row]
        return cell
    }
    
    
    var ref: DatabaseReference!
    var username = String()
    var list = [String]()
    var autoIDs = [String]()
    var databaseAddHandle = DatabaseHandle()
    var databaseRemoveHandle = DatabaseHandle()
    
    //--------------------------------------------------------------
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\n\n\n\n\n")
    }
    
    @IBAction func addAllQuestions(_ sender: Any) {
        
//        self.ref.child("Questions").child("UnitedStates").setValue(GeoQuestions().UnitedStates)
//        self.ref.child("Questions").child("countryCapitals").setValue(Capitals().countryCapitals)
//        self.ref.child("Questions").child("usStateCapitals").setValue(Capitals().usCapitals)
//        self.ref.child("Questions").child("NorthAmerica").setValue(GeoQuestions().NorthAmerica)
//        self.ref.child("Questions").child("SouthAmerica").setValue(GeoQuestions().SouthAmerica)
//        self.ref.child("Questions").child("Europe").setValue(GeoQuestions().Europe)
//        self.ref.child("Questions").child("Asia").setValue(GeoQuestions().Asia)
//        self.ref.child("Questions").child("Africa").setValue(GeoQuestions().Africa)
//        self.ref.child("Questions").child("Australia").setValue(GeoQuestions().Australia)
//        self.ref.child("Questions").child("Antarctica").setValue(GeoQuestions().Antarctica)
//        self.ref.child("Questions").child("PhysicalGeo").setValue(GeoQuestions().PhysicalGeography)
//        self.ref.child("Questions").child("CulturalGeo").setValue(GeoQuestions().CulturalGeography)
//        self.ref.child("Questions").child("EconomicGeo").setValue(GeoQuestions().EconomicGeography)
//        self.ref.child("Questions").child("PoliticalGeo").setValue(GeoQuestions().PoliticalGeography)
//        self.ref.child("Questions").child("HistoricalGeo").setValue(GeoQuestions().HistoricalGeography)
//        self.ref.child("Questions").child("Miscellaneous").setValue(GeoQuestions().Miscellaneous)
//        self.ref.child("Questions").child("MultipleChoice").setValue(MultipleChoice().MultipleChoice)

        let alert = UIAlertController(title: "Added all questions", message: "You added all the questions", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    
    
    @IBAction func removeAllQuestions(_ sender: Any) {
//        self.ref.child("Questions").removeValue()
        let alert = UIAlertController(title: "Removed all questions", message: "You removed all the questions", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    var databaseHandler = DatabaseHandle()
    
    @IBAction func printToConsole(_ sender: Any) {
        
        databaseHandler = ref.child("Questions").observe(.childAdded, with: { (data) in
            let name: [[String]] = (data.value as? [[String]])!
            print(name)
        })
        
    }
    
    
    
    
    
    
    
    
    //--------------------------------------------------------------
    
    
    
    
    
    @IBOutlet var textField: UITextField!
    @IBAction func randomButtonPressed(_ sender: UIButton) {
        if !(textField.text!.isEmpty) {
            
//            let childAdder = self.ref.child("Users").childByAutoId()
//            autoIDs.append(childAdder as String)
            
            
            self.ref.child("Users").childByAutoId().setValue("\(textField.text!)")
            let alert = UIAlertController(title: "Added user", message: "You added the user: \(textField.text!)", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
        }
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCell.EditingStyle.delete {
            
            
            let alert = UIAlertController(title: "Delete?", message: "Do you want to delete the row?", preferredStyle: .actionSheet)
            let deleteAction = UIAlertAction(title: "Delete", style: .destructive) { (list) in
                
                print("Deleting key: \(self.autoIDs[indexPath.row]), value: \(self.list[indexPath.row])")
                
                self.ref.child("Users").child("\(self.autoIDs[indexPath.row])").removeValue()
                
                self.list.remove(at: indexPath.row)
                self.autoIDs.remove(at: indexPath.row)
                
                tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
                
                
                
            }
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            alert.addAction(deleteAction)
            alert.addAction(cancelAction)
            
            present(alert, animated: true, completion: nil)
        }
        
        
    }
    
    @IBAction func editPressed(_ sender: UIBarButtonItem) {
        tableView.setEditing(true, animated: true)
        doneButton.isEnabled = true
        editButton.isEnabled = false
    }
    
    @IBAction func donePressed(_ sender: Any) {
        tableView.setEditing(false, animated: true)
        doneButton.isEnabled = false
        editButton.isEnabled = true
    }
    
    @IBOutlet var doneButton: UIBarButtonItem!
    @IBOutlet var editButton: UIBarButtonItem!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        doneButton.isEnabled = false
        editButton.isEnabled = true
        
        tableView.dataSource = self
        tableView.delegate = self
        
        ref = Database.database().reference()
        
        databaseAddHandle = ref.child("Users").observe(.childAdded, with: { (snapshot) in
            let item = snapshot.value as? String
            
            if let actualItem = item {
                self.autoIDs.append(snapshot.key as String)
                self.list.append(actualItem)
                self.tableView.reloadData()
                for stuff in 0...self.list.count-1 {
                    print("\(self.list[stuff]): \(self.autoIDs[stuff])")
                }
            }
            
            
        })
        
        databaseRemoveHandle = ref.child("Users").observe(.childRemoved, with: { (snapshot) in
            let item = snapshot.value as? String
            
            if let actualItem = item {
                print(actualItem)
                
                //
                if !(self.list.isEmpty) {
                for item in 0...self.list.count-1 {
                    if self.list[item] == actualItem {
                        self.list.remove(at: item)
                        self.autoIDs.remove(at: item)
                        break
                    }
                }
                //

                self.tableView.reloadData()
            }
            }
        })

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
