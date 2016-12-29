//
//  MultiEquation.swift
//  PP2
//
//  Created by Alex Lucas on 1/16/16.
//  Copyright © 2016 tbd. All rights reserved.
//

import UIKit

class MultiEquation: NSObject {
    
    var multiplicand:TargetView!
    var multiplier:TargetView!
    
    var product:Int!
    
    init(one:TargetView, two:TargetView, p:Int){
        super.init();
        
        multiplicand = one;
        multiplier = two;
        
        product = p;
    }
    
    func solved() -> Bool {
        if(multiplicand.currentNum.value * multiplier.currentNum.value == product){
            return true
        }
        return false
    }
    
}
