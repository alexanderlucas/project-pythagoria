//
//  SumEquation.swift
//  Project Pythagoria
//
//  Created by Alex Lucas on 11/7/15.
//  Copyright © 2015 tbd. All rights reserved.
//
import UIKit

class SumEquation: NSObject {

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
        
        let addendOne = one*10 + two
        let addendTwo = three*10 + four
        let sum = five*10 + six
        
        if(addendOne + addendTwo == sum){
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
