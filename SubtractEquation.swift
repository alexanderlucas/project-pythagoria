//
//  SubtractEquation.swift
//  PP2
//
//  Created by Alex Lucas on 1/3/16.
//  Copyright © 2016 tbd. All rights reserved.
//

import UIKit

class SubtractEquation: NSObject {
    
    var minuend:TargetView!
    var subtrahend:TargetView!
    
    var difference:Int!
    
    init(one:TargetView, two:TargetView, d:Int){
        super.init();
        
        minuend = one;
        subtrahend = two;
        
        difference = d;
    }
    
    func solved() -> Bool {
        if(minuend.currentNum.value - subtrahend.currentNum.value == difference){
            return true
        }
        return false
    }
    
}
