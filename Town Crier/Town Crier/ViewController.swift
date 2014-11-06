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
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    /*func tableView(tableView: UITableView!, numberOFRowsInSection section: Int) -> Int {
        return commentMgr.comments.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Default")
        cell.textLabel?.text = commentMgr.comments[indexPath.row].desc
        return cell
    }*/
    
    /*override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }*/
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
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

