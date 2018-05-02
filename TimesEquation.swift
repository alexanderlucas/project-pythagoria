//
//  TimesEquation.swift
//  PP2
//
//  Created by Alex Lucas on 6/7/16.
//  Copyright © 2016 tbd. All rights reserved.
//
import Foundation
class TimesEquation: NSObject {
    
    var numOne:TargetView!
    var numTwo:TargetView!
    var numThree:TargetView!
    
    var numFour:TargetView!
    var numFive:TargetView!
    
    var second = false
    var third = false
    
    init(one:TargetView, two:TargetView, three:TargetView, four:TargetView, five:TargetView){
        super.init();
        
        numOne = one;
        numTwo = two;
        numThree = three;
        
        numFour = four;
        numFive = five;

        
        second = false
        third = false
        
    }
    
    init(one:TargetView, two:TargetView, three:TargetView, four:TargetView){
        super.init()
        
        numOne = one;
        numTwo = two;
        numThree = three;
        numFour = four;
        
        second = true
        third = false
    }
    
    init(one:TargetView, two:TargetView, three:TargetView) {
        super.init()
        
        numOne = one;
        numTwo = two;
        numThree = three;
        
        second = false
        third = true
    }
    
    func solved() -> Bool {
        let one = getNumber(numOne)
        let two = getNumber(numTwo)
        let three = getNumber(numThree)
        
        
        var multiplicand = 0
        var multiplier = 0
        var product = 0
        
        if(second){
            let four = getNumber(numFour)
            multiplicand = one
            multiplier = two
            product = three*10 + four
        }
        else if (third){
            multiplicand = one
            multiplier = two
            product = three
        }
        else {
            let four = getNumber(numFour)
            let five = getNumber(numFive)

            multiplicand = one*10 + two
            multiplier = three
            product = four*10 + five
        }
        if(multiplicand * multiplier == product){
            return true
        }
        return false
    }
    
    func getNumber(_ tv:TargetView) -> Int {
        if(tv.isEnabled == false){
            return tv.currentNum.value
        }
        else {
            return Int(tv.number.text!)!
        }
    }
}
