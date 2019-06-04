//
//  FifthViewController.swift
//  MASHgame
//
//  Created by NAS Video on 5/9/16.
//  Copyright © 2016 Ashley Ellis. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: properties
    @IBOutlet weak var spouseFirst: UITextField!
    @IBOutlet weak var spouseSecond: UITextField!
    @IBOutlet weak var spouseThird: UITextField!
    @IBOutlet weak var spouseFourth: UITextField!
    var pos = 0 //position counter
    
    var sArray = ["A", "S", "H", "L"] //array of strings (for the text fields input)
    var jobArray : [String]!
    var homeArray : [String]!
    var petArray : [String]!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        spouseFirst.delegate = self //tells the view controller to focus on this aspect (text field)
        spouseSecond.delegate = self
        spouseThird.delegate = self
        spouseFourth.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func textFieldDidEndEditing(textField: UITextField) { //the text field is calling this function
        sArray[pos] = textField.text! //will put values entered into the next available spot in the array
        pos++ //increment pos
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        //resign the first responder; give authority back to the view controller
        textField.resignFirstResponder()
        return true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {


        if (sArray.count == 4){
            if (segue.identifier == "toTransportation"){
                /*
                var destination : EighthViewController = segue.destinationViewController as! EighthViewController
                destination.spouseArray = sArray //make the array back in the destination folder the array of the spouse text fields from here
                }*/
            
                let destination = segue.destinationViewController as! SixthViewController
                destination.jobArray = jobArray //make the array back in the destination folder the array of the job text fields from here
                destination.homeArray = homeArray //the home array in the next destination is the same as this home array
                destination.petArray = petArray //make the pet array equal to the pet array created in this view
                destination.spouseArray = sArray
            }
            
        }
        
        
    }


}
