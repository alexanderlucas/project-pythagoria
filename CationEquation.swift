//
//  Cation Equation.swift
//  PP2
//
//  Created by Alex Lucas on 6/7/16.
//  Copyright © 2016 tbd. All rights reserved.
//

import Foundation
class CationEquation: NSObject {
    
    var numOne:TargetView!
    var numTwo:TargetView!
    
    var numThree:TargetView!
    
    var numFour:TargetView!
    var numFive:TargetView!
    
    var numSix:TargetView!
    var numSeven:TargetView!
    
    var second = false
    
    init(one:TargetView, two:TargetView, three:TargetView, four:TargetView, five:TargetView, six:TargetView, seven:TargetView){
        super.init()
        
        numOne = one;
        numTwo = two;
        numThree = three;
        numFour = four;
        numFive = five;
        numSix = six;
        numSeven = seven;
        
        second = true
    }
    
    
    init(one:TargetView, two:TargetView, three:TargetView, four:TargetView, five:TargetView, six:TargetView){
        super.init()
        
        numOne = one;
        numTwo = two;
        numThree = three;
        numFour = four;
        numFive = five;
        numSix = six;
        
        second = true
    }
    
    
    func solved() -> Bool {
        let one = getNumber(numOne)
        let two = getNumber(numTwo)
        let three = getNumber(numThree)
        let four = getNumber(numFour)
        let five = getNumber(numFive)
        let six = getNumber(numSix)
        
        
        var multiplicand = 0
        var multiplier = 0
        var product = 0
        
        if(second){
            multiplicand = one*10 + two
            multiplier = three
            product = four*100 + five*10 + six
        }
        else {
            let seven = getNumber(numSeven)
            multiplicand = one*10 + two
            multiplier = three*10 + four
            product = five*100 + six*10 + seven
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
            return Int(tv.text!)!
        }
    }
}
