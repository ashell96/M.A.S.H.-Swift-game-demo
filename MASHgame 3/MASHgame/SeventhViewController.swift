//
//  SeventhViewController.swift
//  MASHgame
//
//  Created by NAS Video on 5/9/16.
//  Copyright © 2016 Ashley Ellis. All rights reserved.
//

import UIKit

class SeventhViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: properties
    
    @IBOutlet weak var locationFirst: UITextField!
    @IBOutlet weak var locationSecond: UITextField!
    @IBOutlet weak var locationThird: UITextField!
    @IBOutlet weak var locationFourth: UITextField!
    var pos = 0 //position counter
    var lArray = ["A", "S", "H", "L"] //array of strings (for the text fields input)
    
    var jobArray : [String]!
    var homeArray : [String]!
    var petArray : [String]!
    var spouseArray : [String]!
    var transportArray : [String]!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        locationFirst.delegate = self
        locationSecond.delegate = self
        locationThird.delegate = self
        locationFourth.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldDidEndEditing(textField: UITextField) { //the text field is calling this function
        lArray[pos] = textField.text! //will put values entered into the next available spot in the array
        pos++ //increment pos
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        //resign the first responder; give authority back to the view controller
        textField.resignFirstResponder()
        return true
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (lArray.count == 4){
            if (segue.identifier == "toResults"){
                //specify where we're going
                /*
                var destination : EighthViewController = segue.destinationViewController as! EighthViewController
                destination.locationArray = lArray //make the array back in the destination folder the array of the location text fields from here */
            
            
                let destination = segue.destinationViewController as! EighthViewController
                destination.jobArray = jobArray //make the array back in the destination folder the array of the job text fields from here
                destination.homeArray = homeArray //the home array in the next destination is the same as this home array
                destination.petArray = petArray //make the pet array equal to the pet array created in this view
                destination.spouseArray = spouseArray
                destination.transportArray = transportArray
                destination.locationArray = lArray
            }

        }
        
    }
    
    


}
