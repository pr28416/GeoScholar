//
//  ProfilePage.swift
//  GeoGuru
//
//  Created by Pranav and Keshav Ramesh on 10/3/18.
//  Copyright © 2018 GeoGuru. All rights reserved.
//

import UIKit

class ProfilePage: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @IBOutlet weak var profilePic: UIImageView!
    @IBOutlet weak var saveButton: UIButton!
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBAction func savePressed(_ sender: UIButton) {
        UserDefaults.standard.set(firstName.text, forKey: "firstName")
        UserDefaults.standard.set(lastName.text, forKey: "lastName")
    }
    
    @IBAction func importImage(_ sender: UIButton) {
        

        
        if UIDevice().userInterfaceIdiom == .phone {
            let image = UIImagePickerController()
            image.delegate = self
            
            let alert = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            let takePhotoAction = UIAlertAction(title: "Take photo", style: .default, handler: { action in
                image.sourceType = UIImagePickerController.SourceType.camera
                image.allowsEditing = false
                
                self.present(image, animated: true)
                
            })
            let defaultPhotoAction = UIAlertAction(title: "Default photo", style: .default, handler: { action in
                self.profilePic.image = UIImage(named: "icons8-anonymous-mask-512")
            })
            let importPhotoAction = UIAlertAction(title: "Choose photo from library", style: .default, handler: { action in
                image.sourceType = UIImagePickerController.SourceType.photoLibrary
                image.allowsEditing = true
                
                self.present(image, animated: true)
                
                
            })
            alert.addAction(cancelAction)
            alert.addAction(takePhotoAction)
            alert.addAction(importPhotoAction)
            alert.addAction(defaultPhotoAction)
            self.present(alert, animated: true)
        } else if UIDevice().userInterfaceIdiom == .pad {
            let image = UIImagePickerController()
            image.delegate = self
            
            let alert = UIAlertController(title: nil, message: nil, preferredStyle: .alert)
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            let takePhotoAction = UIAlertAction(title: "Take photo", style: .default, handler: { action in
                image.sourceType = UIImagePickerController.SourceType.camera
                image.allowsEditing = false
                
                self.present(image, animated: true)
                
            })
            let defaultPhotoAction = UIAlertAction(title: "Default photo", style: .default, handler: { action in
                self.profilePic.image = UIImage(named: "icons8-anonymous-mask-512")
            })
            let importPhotoAction = UIAlertAction(title: "Choose photo from library", style: .default, handler: { action in
                image.sourceType = UIImagePickerController.SourceType.photoLibrary
                image.allowsEditing = true
                
                self.present(image, animated: true)
                
                
            })
            alert.addAction(cancelAction)
            alert.addAction(takePhotoAction)
            alert.addAction(importPhotoAction)
            alert.addAction(defaultPhotoAction)
            self.present(alert, animated: true)
        }
        
        
        
    }

    @IBAction func outsidePressed(_ sender: Any) {
        self.view.endEditing(true)

    }
    /*
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            profilePic.image = image
            let imageData: NSData = image.jpegData(compressionQuality: 1.0)! as NSData
            UserDefaults.standard.set(imageData, forKey: "image")
        } else {
            print("Profile pic couldn't load")
        }
        
        self.dismiss(animated: true, completion: nil)
    }*/
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        saveButton.layer.cornerRadius = 20
        profilePic.layer.cornerRadius = 20
        
        if let first = UserDefaults.standard.object(forKey: "firstName") as? String {
            firstName.text = first
        }
        if let last = UserDefaults.standard.object(forKey: "lastName") as? String {
            lastName.text = last
        }
        if let data = UserDefaults.standard.object(forKey: "image") as? NSData {
            profilePic.image = UIImage(data: data as Data)
        }

    }
}
