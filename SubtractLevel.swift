//
//  SubtractLevel.swift
//  PP2
//
//  Created by Alex Lucas on 1/3/16.
//  Copyright © 2016 tbd. All rights reserved.
//

import UIKit

class SubtractLevel: Level {
    
    var equations = [SubtractEquation]()
    var levelNums = SubtractNums()
    var differences = [Int]()
    var template:String!
    
    init(level:Int, arrayOfTargets:[TargetView]){
        super.init();
        
        template = nil;
        
        differences = levelNums.numbers[level];
        targets = arrayOfTargets;
        
        let eq1 = SubtractEquation.init(one: targets[0], two: targets[1], d: differences[0]);
        equations.append(eq1)
    
        let eq2 = SubtractEquation.init(one: targets[2], two: targets[3], d: differences[1]);
        equations.append(eq2)
        
        let eq3 = SubtractEquation.init(one: targets[4], two: targets[5], d: differences[2]);
        equations.append(eq3)
        
        let eq4 = SubtractEquation.init(one: targets[6], two: targets[7], d: differences[3]);
        equations.append(eq4)
        
        let eq5 = SubtractEquation.init(one: targets[8], two: targets[9], d: differences[4]);
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
