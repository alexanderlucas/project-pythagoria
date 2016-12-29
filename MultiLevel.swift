//
//  MultiLevel.swift
//  PP2
//
//  Created by Alex Lucas on 1/16/16.
//  Copyright © 2016 tbd. All rights reserved.
//


import UIKit

class MultiLevel: Level {
    
    var equations = [MultiEquation]()
    var levelNums = MultiNums()
    var products = [Int]()
    var template:String!
    
    init(level:Int, arrayOfTargets:[TargetView]){
        super.init();
        
        template = nil;
        
        products = levelNums.numbers[level];
        targets = arrayOfTargets;
        
        let eq1 = MultiEquation.init(one: targets[0], two: targets[1], p: products[0]);
        equations.append(eq1)
        
        let eq2 = MultiEquation.init(one: targets[2], two: targets[3], p: products[1]);
        equations.append(eq2)
        
        let eq3 = MultiEquation.init(one: targets[4], two: targets[5], p: products[2]);
        equations.append(eq3)
        
        let eq4 = MultiEquation.init(one: targets[6], two: targets[7], p: products[3]);
        equations.append(eq4)
        
        let eq5 = MultiEquation.init(one: targets[8], two: targets[9], p: products[4]);
        equations.append(eq5)
        
        
    }
    
    override func equationsCorrect() -> Bool {
        var ret = true
        for i in 0..<equations.count {
            if(!equations[i].solved()){
                ret = false;
            }
        }
        return ret;
    }
    
    
    
}
