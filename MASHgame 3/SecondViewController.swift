//
//  SecondViewController.swift
//  MASHgame
//
//  Created by NAS Video on 5/5/16.
//  Copyright © 2016 Ashley Ellis. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    //mark: PROPERTIES
    @IBOutlet weak var homeFirst: UITextField!
    @IBOutlet weak var homeSecond: UITextField!
    @IBOutlet weak var homeThird: UITextField!
    @IBOutlet weak var homeFourth: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    var pos = 0 //position counter
    
    //var hArray = [String]()  //array of strings (for the text fields input)
    var hArray = ["A", "S", "H", "L"] //allocating the space for the array here
    override func viewDidLoad() {
        super.viewDidLoad()
        homeFirst.delegate = self //tells the view controller to focus on this aspect (text field)
        homeSecond.delegate = self
        homeThird.delegate = self
        homeFourth.delegate = self
        errorLabel.text = ""

        // Do any additional setup after loading the view.
    }

        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
    func textFieldDidEndEditing(textField: UITextField) { //the text field is calling this function
        //hArray.append(textField.text!)
        hArray[pos] = textField.text! //will put values entered into the next available spot in the array
        pos++ //increment pos
        
        //this will be called each time they end editing
    }
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        //resign the first responder; give authority back to the view controller
        textField.resignFirstResponder()
        return true
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
       
        //make sure that the length of array is equal to 4, else/make sure every item is full
        if (hArray.count == 4){
            if (segue.identifier == "toJob") {
                //print("HELLO")
            /*
            var destination : EighthViewController = segue.destinationViewController as! EighthViewController
            destination.homeArray = hArray //make the array back in the destination folder the array of the home text fields from here*/
            
            //var destination : ThirdViewController = segue.destinationViewController as! ThirdViewController
            
            let destination = segue.destinationViewController as! ThirdViewController

            destination.homeArray = hArray //transfer the array in the job controller the array of the home text fields from here*/
            //destination.number = 7
            
            }
            
            else {
                errorLabel.text = "Enter 4 values!"
            }

        }

    }

}
