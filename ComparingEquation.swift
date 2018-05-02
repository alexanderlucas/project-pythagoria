//
//  ComparingEquation.swift
//  PP2
//
//  Created by Alex Lucas on 6/8/16.
//  Copyright © 2016 tbd. All rights reserved.
//
import Foundation
class ComparingEquation: NSObject {
    
    var numOne:TargetView!
    var numTwo:TargetView!
    
    var numThree:TargetView!
    var numFour:TargetView!
    
    var numFive:TargetView!
    var numSix:TargetView!
    
    var numSeven:TargetView!
    var numEight:TargetView!

    
    var whole = false
    var lessThan = false
    
    init(one:TargetView, two:TargetView, three:TargetView, four:TargetView,five:TargetView, six:TargetView, seven:TargetView, eight:TargetView, less:Bool){
        super.init();
        
        numOne = one;
        numTwo = two;
        
        numThree = three;
        numFour = four;
        
        numFive = five
        numSix = six
        
        numSeven = seven
        numEight = eight
        whole = false
        lessThan = less
    }
    
    init(one:TargetView, two:TargetView, three:TargetView, four:TargetView,five:TargetView, six:TargetView, seven:TargetView){
        super.init();
        
        numOne = one;
        numTwo = two;
        
        numThree = three;
        numFour = four;
        
        numFive = five
        numSix = six
        
        numSeven = seven
        whole = true
        
    }
    
    func solved() -> Bool {
        let one = getNumber(numOne)
        let two = getNumber(numTwo)
        
        let three = getNumber(numThree)
        let four = getNumber(numFour)

        let five = getNumber(numFive)
        let six = getNumber(numSix)
        
        let seven = getNumber(numSeven)
        
        var num1 = 0
        var den1 = 0
        var num2 = 0
        var den2 = 0
        var num3 = 0
        var den3 = 0
        var num4 = 0
        var den4 = 0
        
        
        if(whole){
            num1 = one
            den1 = two
            num2 = three
            den2 = four
            num3 = five
            den3 = six
            num4 = seven
            den4 = 1
        }
        else {
            let eight = getNumber(numEight)
            
            num1 = one
            den1 = two
            num2 = three
            den2 = four
            num3 = five
            den3 = six
            num4 = seven
            den4 = eight

        }
        if(den2 == 0 || den1 == 0 || den3 == 0 || den4 == 0){
            return false
        }
        print(Double(num1/den1))
        print(Double(num2/den2))
        if(whole){
            if((Double(num1/den1) > Double(num2/den2)) && ( Double(num2/den2) < Double(num3/den3) ) && ( Double(num3/den3) >  Double(num4/den4))){
                return true
            }
            return false
        }
        else if(lessThan){
            if((Double(num1/den1) < Double(num2/den2)) && ( Double(num2/den2) < Double(num3/den3) ) && ( Double(num3/den3) <  Double(num4/den4))){
                return true
            }
            return false

        }
        else{
            if((Double(num1/den1) > Double(num2/den2)) && ( Double(num2/den2) > Double(num3/den3) ) && ( Double(num3/den3) >  Double(num4/den4))){
                return true
            }
            return false

        }
       
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
