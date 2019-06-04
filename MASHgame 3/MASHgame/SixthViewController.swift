//
//  SixthViewController.swift
//  MASHgame
//
//  Created by NAS Video on 5/9/16.
//  Copyright © 2016 Ashley Ellis. All rights reserved.
//

import UIKit

class SixthViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: properties:
    @IBOutlet weak var transportFirst: UITextField!
    @IBOutlet weak var transportSecond: UITextField!
    @IBOutlet weak var transportThird: UITextField!
    @IBOutlet weak var transportFourth: UITextField!
    var pos = 0 //position counter
    var tArray = ["A", "S", "H", "L"] //array of strings (for the text fields input)
    
    var jobArray : [String]!
    var homeArray : [String]!
    var petArray : [String]!
    var spouseArray : [String]!

    override func viewDidLoad() {
        super.viewDidLoad()
        transportFirst.delegate = self //tells the view controller to focus on this aspect (text field)
        transportSecond.delegate = self
        transportThird.delegate = self
        transportFourth.delegate = self


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldDidEndEditing(textField: UITextField) { //the text field is calling this function
        tArray[pos] = textField.text! //will put values entered into the next available spot in the array
        pos++ //increment pos
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        //resign the first responder; give authority back to the view controller
        textField.resignFirstResponder()
        return true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        if (tArray.count == 4){
            if (segue.identifier == "toLocation"){
                //specify where we're going
                /*
                var destination : EighthViewController = segue.destinationViewController as! EighthViewController
                destination.transportArray = tArray //make the array back in the destination folder the array of the transportation text fields from here */
            
                let destination = segue.destinationViewController as! SeventhViewController
                destination.jobArray = jobArray //make the array back in the destination folder the array of the job text fields from here
                destination.homeArray = homeArray //the home array in the next destination is the same as this home array
                destination.petArray = petArray //make the pet array equal to the pet array created in this view
                destination.spouseArray = spouseArray
                destination.transportArray = tArray
            }

        }
        
    }


}
