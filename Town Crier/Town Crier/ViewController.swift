//
//  ViewController.swift
//  Town Crier
//
//  Created by Lou Oriondo on 11/4/14.
//  Copyright (c) 2014 4800. All rights reserved.
//

import UIKit

///@protocol IBOutlet UITextField

class ViewController: UIViewController {
    
    var profileName: String
    var email: String
    var password: String
    
    required init(coder aDecoder: NSCoder) {
        self.profileName = "Temp"
        self.email = "Temp"
        self.password = "Temp"
        super.init(coder: aDecoder)
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

