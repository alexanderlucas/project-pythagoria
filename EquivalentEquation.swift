//
//  EquivalentEquation.swift
//  PP2
//
//  Created by Alex Lucas on 6/8/16.
//  Copyright © 2016 tbd. All rights reserved.
//

import UIKit

class EquivalentEquation: NSObject {
    
    var numOne:TargetView!
    var numTwo:TargetView!
    
    var numThree:TargetView!
    
    var numFour:TargetView!
    
    var zero = false
    
    init(one:TargetView, two:TargetView, three:TargetView, four:TargetView){
        super.init();
        
        numOne = one;
        numTwo = two;
        
        numThree = three;
        numFour = four;
        zero = false
    }
    
    init(one:TargetView, two:TargetView){
        super.init();
        
        numOne = one;
        numTwo = two;
        
        zero = true
    }
    
    func solved() -> Bool {
        let one = getNumber(numOne)
        let two = getNumber(numTwo)
        
        
        
        var num1 = 0
        var den1 = 0
        var num2 = 0
        var den2 = 0

        
        if(zero){
            num1 = one
            den1 = two
            den2 = 1
            num2 = 0
        }
        else {
            let three = getNumber(numThree)
            let four = getNumber(numFour)
            
            num1 = one
            den1 = two
            num2 = three
            den2 = four
        }
        if(den2 == 0 || den1 == 0){
            return false
        }
        print(Double(num1/den1))
        print(Double(num2/den2))
        if(Double(num1/den1) == Double(num2/den2)){
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
