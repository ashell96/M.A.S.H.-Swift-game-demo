//
//  EighthViewController.swift
//  MASHgame
//
//  Created by NAS Video on 5/9/16.
//  Copyright © 2016 Ashley Ellis. All rights reserved.
//

import UIKit

class EighthViewController: UIViewController {
    
    //MARK: properties
    @IBOutlet weak var homeLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    @IBOutlet weak var petLabel: UILabel!
    @IBOutlet weak var spouseLabel: UILabel!
    @IBOutlet weak var transportationLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!

    var homeArray : [String]! //make an array of type String to accept the values in the Home text fields
    var jobArray : [String]! //make an array of type String to accept the values in the Job text fields
    var petArray : [String]! //make an array of type String to accept the values in the Pet text fields
    var spouseArray : [String]! //make an array of type String to accept the values in the Spouse text fields
    var transportArray : [String]! //make an array of type String to accept the values in the Transportation text fields
    var locationArray : [String]! //make an array of type String to accept the values in the Location text fields
   
    func randomHome (l: String)-> String { //chooses a random number and uses that number to find the index of a random text field item
        var randomNumber : Int = 0
        randomNumber = Int(arc4random_uniform(UInt32(5))) //generate a random number between 0 to 5 (not including 5)
        homeLabel.text = homeArray[randomNumber]//the label of the location that will print will be the one in the home that is randomized
        return homeLabel.text!
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print("EIGHTH VIEWCONTROLLER")
        
   
        //the label will show a value from a random index of each array
        homeLabel.text = homeArray[Int(arc4random_uniform(UInt32(4)))]
        jobLabel.text = jobArray[Int(arc4random_uniform(UInt32(4)))]
        petLabel.text = petArray[Int(arc4random_uniform(UInt32(4)))]
        spouseLabel.text = spouseArray[Int(arc4random_uniform(UInt32(4)))]
        transportationLabel.text = transportArray[Int(arc4random_uniform(UInt32(4)))]
        locationLabel.text = locationArray[Int(arc4random_uniform(UInt32(4)))]

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //make a section to prepare for the information given by the segue from the Home view
    
    
    
    //random home generator
    /*func randomHome (l: String){ //chooses a random number and uses that number to find the index of a random text field item
        var randomNumber : Int = 0
        randomNumber = Int(arc4random_uniform(UInt32(5))) //generate a random number between 0 to 5 (not including 5)
        homeLabel.text = homeArray[randomNumber]//the label of the location that will print will be the one in the home that is randomized
    }*/
    
    //random job generator
    func randomJob (l: String){
        var randomNumber : Int = 0
        randomNumber = Int(arc4random_uniform(UInt32(5)))
        jobLabel.text = jobArray[randomNumber]
    }

    
    //random pet generator
    func randomPet (l: String){
        var randomNumber : Int = 0
        randomNumber = Int(arc4random_uniform(UInt32(5)))
        petLabel.text = petArray[randomNumber]
    }

    
    //random spouse generator
    func randomSpouse (l: String){
        var randomNumber : Int = 0
        randomNumber = Int(arc4random_uniform(UInt32(5)))
        spouseLabel.text = spouseArray[randomNumber]
    }

    
    //random job generator
    func randomTansportation (l: String){
        var randomNumber : Int = 0
        randomNumber = Int(arc4random_uniform(UInt32(5))) //generate a random number between 0 to 5 (not including 5)
        transportationLabel.text = transportArray[randomNumber]//the label of the location that will print will be the one in the location that is randomized
    }

    
    //random job generator
    //use the info in the text field to choose a random value
    //get a random value from the variables stored in the array to be chosen
    func randomLocation (l: String){
        var randomNumber : Int = 0
        randomNumber = Int(arc4random_uniform(UInt32(5)))
        locationLabel.text = locationArray[randomNumber]
    }


}
