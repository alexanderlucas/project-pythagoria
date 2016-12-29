//
//  PlusEquation.swift
//  PP2
//
//  Created by Alex Lucas on 5/25/16.
//  Copyright © 2016 tbd. All rights reserved.
//

import Foundation
class PlusEquation: NSObject {
    
    var numOne:TargetView!
    var numTwo:TargetView!
    var numThree:TargetView!
    
    var numFour:TargetView!
    var numFive:TargetView!
    
    var numSix:TargetView!
    var numSeven:TargetView!
    var numEight:TargetView!

    var second = false
    var third = false
    
    init(one:TargetView, two:TargetView, three:TargetView, four:TargetView, five:TargetView, six:TargetView, seven:TargetView, eight:TargetView){
        super.init();
        
        numOne = one;
        numTwo = two;
        numThree = three;
        numFour = four;
        numFive = five;
        numSix = six;
        numSeven = seven;
        numEight = eight;
        
        second = false
        third = false
        
    }
    
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
        third = false
    }
    
    init(one:TargetView, two:TargetView, three:TargetView, four:TargetView, five:TargetView) {
        super.init()
        
        numOne = one;
        numTwo = two;
        numThree = three;
        numFour = four;
        numFive = five;
       
        second = false
        third = true
    }
    
    func solved() -> Bool {
        let one = getNumber(numOne)
        let two = getNumber(numTwo)
        let three = getNumber(numThree)
        let four = getNumber(numFour)
        let five = getNumber(numFive)
        let six = getNumber(numSix)
        let seven = getNumber(numSeven)
        let eight = getNumber(numEight)
        
        var addendOne = 0
        var addendTwo = 0
        var sum = 0

        if(second){
            addendOne = one*10 + two
            addendTwo = three*10 + four
            sum = five*100 + six*10 + seven
        }
        else if (third){
            addendOne = one*10 + two
            addendTwo = three
            sum = four*10 + five
        }
        else {
            addendOne = one*100 + two*10 + three
            addendTwo = four*10 + five
            sum = six*100 + seven*10 + eight
        }
        if(addendOne + addendTwo == sum){
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
