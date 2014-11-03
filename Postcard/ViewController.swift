//
//  ViewController.swift
//  Postcard
//
//  Created by John Mulholland on 23/10/2014.
//  Copyright (c) 2014 John Mulholland. All rights reserved.
//
//  Comment added 3/11/2014 to test git commits
//  Second comment added to test uploading again
//  Third comment to test TextExpander

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden=false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        nameLabel.hidden=false
        nameLabel.text = enterNameTextField.text
        enterNameTextField.text = ""
        nameLabel.textColor = UIColor.blueColor()
        enterNameTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail sent", forState: UIControlState.Normal)
    }
    

}

