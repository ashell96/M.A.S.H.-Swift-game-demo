//
//  ThirdViewController.swift
//  MASHgame
//
//  Created by NAS Video on 5/5/16.
//  Copyright © 2016 Ashley Ellis. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITextFieldDelegate {
    //MARK:properties
    
    @IBOutlet weak var jobFirst: UITextField!
    @IBOutlet weak var jobSecond: UITextField!
    @IBOutlet weak var jobThird: UITextField!
    @IBOutlet weak var jobFourth: UITextField!
    var pos = 0

    var jArray = ["A", "S", "H", "L"] //allocating an array of size 4
    var homeArray: [String]! //make an array of type String to accept the values in the Home text fields; **RECEIVING INFO FROM LAST VIEW
    //an array of Strings with an adress homeArray
    //var number : Int = 0

    

    override func viewDidLoad() {
        super.viewDidLoad()
        jobFirst.delegate = self //tells the view controller to focus on this aspect (text field)
        jobSecond.delegate = self
        jobThird.delegate = self
        jobFourth.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func textFieldDidEndEditing(textField: UITextField) { //the text field is calling this function
        jArray[pos] = textField.text! //will put values entered into the next available spot in the array
        pos++ //increment pos

    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        //resign the first responder; give authority back to the view controller
        textField.resignFirstResponder()
        return true
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
       
        //print(number)
        if (jArray.count == 4){
            if (segue.identifier == "toPet") {
                /* var destination : EighthViewController = segue.destinationViewController as! EighthViewController
                destination.jobArray = jArray //make the array back in the destination folder the array of the job text fields from here*/
            
                let destination = segue.destinationViewController as! FourthViewController
                destination.jobArray = jArray //make the array back in the destination folder the array of the job text fields from here
                destination.homeArray = homeArray //the home array in the next destination is the same as this home array
            }
        }
        
    }



}
