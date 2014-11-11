//
//  ViewController.swift
//  Town Crier
//
//  Created by Lou Oriondo on 11/4/14.
//  Copyright (c) 2014 4800. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    @IBOutlet var nameField: UITextField!
    @IBOutlet var emailField: UITextField!
    @IBOutlet var passwordField: UITextField!
    @IBOutlet var profileDone: UIButton!
    @IBOutlet var addCommentField: UITextField!
    @IBOutlet var comment: UILabel!
    
    @IBOutlet var venueNameField: UITextField!
    @IBOutlet var openHourField: UITextField!
    @IBOutlet var closeHourField: UITextField!
    @IBOutlet var addVenueButton: UIButton!
    @IBOutlet weak var venueLabel: UILabel!
    @IBOutlet weak var openHourLabel: UILabel!
    @IBOutlet weak var closeHourLabel: UILabel!
    @IBOutlet var refreshButton: UIButton!
    
    var vname: String!
    var vopen: String!
    var vclose: String!
    
    //var venues: [String]
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if sender as? NSObject != self.profileDone {
            return
        }
        if self.nameField.text.utf16Count > 0 &&
            self.emailField.text.utf16Count > 0 &&
            self.passwordField.text.utf16Count > 0 {
                var userProfile: Profile;
                var name = nameField.text
                var userEmail = emailField.text
                var userPass = passwordField.text
                userProfile = Profile(profileName: name, profileEmail: userEmail, profilePassword: userPass)
        }
    }
    
    @IBAction func saveVenueAction(sender: AnyObject) {
        vname = venueNameField.text
        vopen = openHourField.text
        vclose = closeHourField.text
        //venues.append(venueNameField.text)
        self.venueLabel.text = vname
        //self.openHourLabel!.text = openHour
        //self.closeHourLabel!.text = closeHour
    }
    
    @IBAction func refresh(sender: AnyObject) {
        venueLabel.text = vname
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //self.venueLabel.text = "Redneck Rivieria"
        //self.openHourLabel.text = "9:00am"
        //self.closeHourLabel.text = "9:00pm"
        
        //self.venueNameField.placeholder = "Enter venue name here."
        //self.openHourField.placeholder = "12:00am"
        //self.closeHourField.placeholder = "12:00pm"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

class Profile {
    
    var profileName: String
    var profileEmail: String
    var profilePassword: String
    
    init(profileName: String, profileEmail: String, profilePassword: String){
        self.profileName = profileName
        self.profileEmail = profileEmail
        self.profilePassword = profilePassword
    }
    
    func getName() -> String {
        return self.profileName
    }
    
    func getEmail() -> String {
        return self.profileEmail
    }
    
    func getPassword() -> String {
        return self.profilePassword
    }
}

