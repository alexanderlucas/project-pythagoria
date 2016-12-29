//
//  DifferenceEquation.swift
//  PP2
//
//  Created by Alex Lucas on 1/5/16.
//  Copyright © 2016 tbd. All rights reserved.
//


import UIKit

class BorrowEquation: NSObject {
    
    var numOne:TargetView!
    var numTwo:TargetView!
    
    var numThree:TargetView!
    var numFour:TargetView!
    
    var numFive:TargetView!
    var numSix:TargetView!
    
    init(one:TargetView, two:TargetView, three:TargetView, four:TargetView, five:TargetView, six:TargetView){
        super.init();
        
        numOne = one;
        numTwo = two;
        numThree = three;
        numFour = four;
        numFive = five;
        numSix = six;
        
    }
    
    func solved() -> Bool {
        let one = getNumber(numOne)
        let two = getNumber(numTwo)
        let three = getNumber(numThree)
        let four = getNumber(numFour)
        let five = getNumber(numFive)
        let six = getNumber(numSix)
        
        let minuend = one*10 + two
        let subtrahend = three*10 + four
        let difference = five*10 + six
        
        if(minuend - subtrahend == difference){
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
