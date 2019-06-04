//
//  CustomButton.swift
//  MASHgame
//
//  Created by NAS Video on 5/2/16.
//  Copyright © 2016 Ashley Ellis. All rights reserved.
//

import Foundation
import UIKit

class MyCustomButton: UIButton { //the class is over type UIButton
    required init(coder aDecoder: (NSCoder!)) {
        super.init(coder: aDecoder)!
        self.layer.cornerRadius = 15.0
        self.layer.borderWidth = 2.0
        self.backgroundColor = UIColor.whiteColor()
        
    }
}

