//
//  Classification.swift
//  field-survey
//
//  Created by Jasmine Tan on 7/14/18.
//  Copyright © 2018 Jasmine Tan. All rights reserved.
//

import UIKit

enum Classification: String{
    case bird
    case amphibian
    case reptile
    case insect
    case plant
    case mammal
    case fish
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
}
