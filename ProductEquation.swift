//
//  ProductEquation.swift
//  PP2
//
//  Created by Alex Lucas on 6/7/16.
//  Copyright © 2016 tbd. All rights reserved.
//

import Foundation
class ProductEquation: NSObject {
    
    var numOne:TargetView!
    var numTwo:TargetView!
   
    var numThree:TargetView!
    
    var numFour:TargetView!
    var numFive:TargetView!
    var numSix:TargetView!
  
    
    var second = false
    
    init(one:TargetView, two:TargetView, three:TargetView, four:TargetView, five:TargetView, six:TargetView){
        super.init();
        
        numOne = one;
        numTwo = two;
        numThree = three;
        numFour = four;
        numFive = five;
        numSix = six;
        
        second = false
    }
    
    init(one:TargetView, two:TargetView, three:TargetView, four:TargetView, five:TargetView){
        super.init()
        
        numOne = one;
        numTwo = two;
        numThree = three;
        numFour = four;
        numFive = five;
        
        second = true
    }
    

    
    func solved() -> Bool {
        let one = getNumber(numOne)
        let two = getNumber(numTwo)
        let three = getNumber(numThree)
        let four = getNumber(numFour)
        let five = getNumber(numFive)
       
        var multiplicand = 0
        var multiplier = 0
        var product = 0
        
        if(second){
            multiplicand = one*10 + two
            multiplier = three
            product = four*10 + five
        }
        else {
            print("second")
            let six = getNumber(numSix)

            
            multiplicand = one*10 + two
            multiplier = three
            product = four*100 + five*10 + six
        }
       
        if(multiplicand * multiplier == product){
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
