//
//  DivideEquation.swift
//  PP2
//
//  Created by Alex Lucas on 6/8/16.
//  Copyright © 2016 tbd. All rights reserved.
//

import UIKit

class DivideEquation: NSObject {
    
    var dividend:TargetView!
    var divisor:TargetView!
    var quotient:TargetView!
    
    init(one:TargetView, two:TargetView, three:TargetView){
        super.init();
        
        dividend = one;
        divisor = two;
        
        quotient = three;
    }
    
    func solved() -> Bool {
        if(getNumber(divisor) == 0){
            return false
        }
        if(getNumber(dividend) / getNumber(divisor) == getNumber(quotient)){
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
