//
//  RemainderEquation.swift
//  PP2
//
//  Created by Alex Lucas on 6/8/16.
//  Copyright © 2016 tbd. All rights reserved.
//

import UIKit

class RemainderEquation: NSObject {
    
    var numOne:TargetView!
    var numTwo:TargetView!
    
    var numThree:TargetView!
    
    var numFour:TargetView!
    var numFive:TargetView!
    
    var remainder = false
    
    init(one:TargetView, two:TargetView, three:TargetView, four:TargetView){
        super.init();
        
        numOne = one;
        numTwo = two;
        
        numThree = three;
        numFour = four;
        remainder = false
    }
    
    init(one:TargetView, two:TargetView, three:TargetView, four:TargetView, five:TargetView){
        super.init();
        
        numOne = one;
        numTwo = two;
        
        numThree = three;
        numFour = four;
        numFive = five;
        remainder = true
    }
    
    func solved() -> Bool {
        let one = getNumber(numOne)
        let two = getNumber(numTwo)
        let three = getNumber(numThree)
        let four = getNumber(numFour)
        
        
        var dividend = 0
        var divisor = 0
        var quotient = 0
        var rem = 0
        
        if(remainder){
            let five = getNumber(numFive)

            dividend = one*10 + two
            divisor = three
            quotient = four
            rem = five
        }
        else {
            dividend = one*10 + two
            divisor = three
            quotient = four
            rem = 0
        }
        if(divisor == 0){
            return false
        }
        if(quotient*divisor + rem == dividend){
            return true
        }
        return false
    }
    
    func getNumber(tv:TargetView) -> Int {
        if(tv.enabled == false){
            return tv.currentNum.value
        }
        else {
            return Int(tv.text!)!
        }
    }

    
}
