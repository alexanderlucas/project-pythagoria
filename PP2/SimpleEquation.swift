//
//  SimpleEquation.swift
//  Project Pythagoria
//
//  Created by Alex Lucas on 10/9/15.
//  Copyright © 2015 tbd. All rights reserved.
//

import UIKit

//NEEDS +-x/

class SimpleEquation: NSObject {
    
    var addendOne:TargetView!
    var addendTwo:TargetView!

    var sum:Int!
    
    init(one:TargetView, two:TargetView, s:Int){
        super.init();
        
        addendOne = one;
        addendTwo = two;
        
        sum = s;
    }
    
    func solved() -> Bool {
        if(addendOne.currentNum.value+addendTwo.currentNum.value == sum){
            return true
        }
        return false
    }
    
}
