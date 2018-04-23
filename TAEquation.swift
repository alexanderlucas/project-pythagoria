//
//  TAEquation.swift
//  PP2
//
//  Created by Alex Lucas on 1/2/16.
//  Copyright © 2016 tbd. All rights reserved.
//

import UIKit

class TAEquation: NSObject {
    
    var numOne:TargetView!
    var numTwo:TargetView!
    var numThree:TargetView!
  
    
    init(one:TargetView, two:TargetView, three:TargetView){
        super.init();
        
        numOne = one;
        numTwo = two;
        numThree = three;
    }
    
    func solved() -> Bool {
        let minuend = getNumber(numOne)
        let subtrahend = getNumber(numTwo)
        let difference = getNumber(numThree)
        
        
        if(minuend - subtrahend == difference){
            return true
        }
        return false
    }
    
    func getNumber(_ tv:TargetView) -> Int {
        if(tv.isEnabled == false){
            return tv.currentNum.value
        }
        else {
            return Int(tv.text!)!
        }
    }
}
