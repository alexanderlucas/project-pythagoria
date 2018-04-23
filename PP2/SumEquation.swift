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
}
