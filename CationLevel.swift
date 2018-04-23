//
//  CationLevel.swift
//  PP2
//
//  Created by Alex Lucas on 6/7/16.
//  Copyright © 2016 tbd. All rights reserved.
//

import UIKit

class CationLevel: Level {
    
    var equations = [CationEquation]()
    var levelNums = CationNums()
    var products = [Int]()
    var template:String!
    
    init(level:Int, arrayOfTargets:[TargetView]){
        super.init();
        
        template = nil;
        
        targets = arrayOfTargets;
        
        let eq1 = CationEquation.init(one: targets[0], two: targets[1], three: targets[2], four: targets[3], five: targets[4], six: targets[5], seven: targets[6]);
        equations.append(eq1)
        
        let eq2 = CationEquation.init(one: targets[6], two: targets[7], three: targets[8], four: targets[9], five: targets[10], six: targets[11], seven: targets[12]);
        equations.append(eq2)
        
        let eq3 = CationEquation.init(one: targets[13], two: targets[14], three: targets[15], four: targets[16], five: targets[17], six: targets[18]);
        equations.append(eq3)
        
        let eq4 = CationEquation.init(one: targets[19], two: targets[20], three: targets[21], four: targets[22], five: targets[23], six: targets[24]);
        equations.append(eq4)
        
        
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
