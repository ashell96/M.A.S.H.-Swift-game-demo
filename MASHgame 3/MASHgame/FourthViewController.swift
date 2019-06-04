//
//  FourthViewController.swift
//  MASHgame
//
//  Created by NAS Video on 5/9/16.
//  Copyright © 2016 Ashley Ellis. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController, UITextFieldDelegate {
    //mark: PROPERTIES
    @IBOutlet weak var petFirst: UITextField!
    @IBOutlet weak var petSecond: UITextField!
    @IBOutlet weak var petThird: UITextField!
    @IBOutlet weak var petFourth: UITextField!
    var pos = 0 //position counter

    var pArray = ["A", "S", "H", "L"] //array of strings (for the text fields input)
    
    //collecting the prvious arrays and carrying them down to the last controller
    var jobArray : [String]! //array of strings (for the text fields input)
    var homeArray : [String]! //make an array of type String to accept the values in the Home text fields; **RECEIVING INFO FROM LAST VIEW
    //var hArray = [String]() //array of strings (for the text fields input)
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        petFirst.delegate = self //tells the view controller to focus on this aspect (text field)
        petSecond.delegate = self
        petThird.delegate = self
        petFourth.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func textFieldDidEndEditing(textField: UITextField) { //the text field is calling this function
        pArray[pos] = textField.text! //will put values entered into the next available spot in the array
        pos++ //increment pos
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        //resign the first responder; give authority back to the view controller
        textField.resignFirstResponder()
        return true
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {

        if (pArray.count == 4){
            if (segue.identifier == "toSpouse"){
                /*
                var destination : EighthViewController = segue.destinationViewController as! EighthViewController
                destination.petArray = pArray //make the array back in the destination folder the array of the pet text fields from here */
            
                let destination = segue.destinationViewController as! FifthViewController
                destination.jobArray = jobArray //make the array back in the destination folder the array of the job text fields from here
                destination.homeArray = homeArray //the home array in the next destination is the same as this home array
                destination.petArray = pArray //make the pet array equal to the pet array created in this view
            }
        }
    }

}
