//
//  ViewController.swift
//  Town Crier
//
//  Created by Lou Oriondo on 11/4/14.
//  Copyright (c) 2014 4800. All rights reserved.
//

import UIKit

let _venueSingleton = Venue()

class ViewController: UIViewController{
    
    @IBOutlet var nameField: UITextField!
    @IBOutlet var emailField: UITextField!
    @IBOutlet var passwordField: UITextField!
    @IBOutlet var profileDone: UIButton!
    
    @IBOutlet var commentField: UITextField!
    @IBOutlet var commentLabel: UILabel!
    
    @IBOutlet private var venueNameField: UITextField!
    @IBOutlet private var openHourField: UITextField!
    @IBOutlet private var closeHourField: UITextField!
    @IBOutlet private var addVenueButton: UIButton!
    @IBOutlet private var descField: UITextField!
    @IBOutlet private weak var venueLabel: UILabel!
    @IBOutlet private weak var openHourLabel: UILabel!
    @IBOutlet private weak var closeHourLabel: UILabel!
    @IBOutlet private weak var descLabel: UILabel!
    @IBOutlet private var refreshButton: UIButton!
    
    var vname: String!
    var vopen: String!
    var vclose: String!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        //print("initializing view")
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
        _venueSingleton.setVenueName(vname)
        _venueSingleton.setOpenHour(vopen)
        _venueSingleton.setCloseHour(vclose)
        _venueSingleton.setDescription(descField.text)
    }
    
    @IBAction func refresh(sender: AnyObject) {
        venueLabel.text = _venueSingleton.getVenueName()
    }
    
    @IBAction func addComment(sender: AnyObject) {
        commentLabel.text = commentField.text
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(venueLabel != nil){
            venueLabel.text = _venueSingleton.getVenueName()
        }
        
        if(openHourLabel != nil && closeHourLabel != nil){
            openHourLabel.text = _venueSingleton.getOpenHour()
            closeHourLabel.text = _venueSingleton.getCloseHour()
        }
        
        if(descLabel != nil){
            descLabel.text = _venueSingleton.getDescription()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

class Venue {
    
    private var vname: String
    private var openHour: String
    private var closeHour: String
    private var description: String
    
    init(){
        self.vname = "The Redneck Riviera"
        self.openHour = "9:00am"
        self.closeHour = "9:00pm"
        self.description = "The Redneck Riviera is cool."
    }
    
    func setVenueName(name: String) {
        self.vname = name
    }
    
    func getVenueName() -> String{
        return vname
    }
    
    func getOpenHour() -> String {
        return self.openHour
    }
    
    func setOpenHour(hour: String) {
        self.openHour = hour
    }
    
    func getCloseHour() -> String {
        return self.closeHour
    }
    
    func setCloseHour(hour: String) {
        self.closeHour = hour
    }
    
    func setDescription(desc: String) {
        self.description = desc
    }
    
    func getDescription() -> String {
        return self.description
    }
}

class Comment {
    var comment: String
    
    init(comment: String) {
        self.comment = comment
    }
    
    func setComment(c: String) {
        self.comment = c
    }
    
    func getComment() -> String {
        return self.comment
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

