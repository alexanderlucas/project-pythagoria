//
//  EquivalentLevel.swift
//  PP2
//
//  Created by Alex Lucas on 6/8/16.
//  Copyright © 2016 tbd. All rights reserved.
//

import UIKit

class EquivalentLevel: Level {
    
    var equations = [EquivalentEquation]()
    var levelNums = EquivalentNums()
    var products = [Int]()
    var template:String!
    
    init(level:Int, arrayOfTargets:[TargetView]){
        super.init();
        
        template = nil;
        
        targets = arrayOfTargets;
        
        let eq1 = EquivalentEquation.init(one: targets[0], two: targets[1]);
        equations.append(eq1)
        
        let eq2 = EquivalentEquation.init(one: targets[2], two: targets[3], three: targets[4], four: targets[5]);
        equations.append(eq2)
        
        let eq3 = EquivalentEquation.init(one: targets[6], two: targets[7], three: targets[8], four: targets[9]);
        equations.append(eq3)
        
        let eq4 = EquivalentEquation.init(one: targets[10], two: targets[11], three: targets[12], four: targets[13]);
        equations.append(eq4)
        
        let eq5 = EquivalentEquation.init(one: targets[14], two: targets[15], three: targets[16], four: targets[17]);
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
