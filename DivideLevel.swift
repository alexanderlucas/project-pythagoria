//
//  DivideLevel.swift
//  PP2
//
//  Created by Alex Lucas on 6/8/16.
//  Copyright © 2016 tbd. All rights reserved.
//

import UIKit

class DivideLevel: Level {
    
    var equations = [DivideEquation]()
    var levelNums = DivideNums()
    
    init(level:Int, arrayOfTargets:[TargetView]){
        super.init();
        
        targets = arrayOfTargets;
        
        let eq1 = DivideEquation.init(one: targets[0], two: targets[1], three: targets[2]);
        equations.append(eq1)
        
        let eq2 = DivideEquation.init(one: targets[3], two: targets[4], three: targets[5]);
        equations.append(eq2)
        
        let eq3 = DivideEquation.init(one: targets[6], two: targets[7], three: targets[8]);
        equations.append(eq3)
        
        let eq4 = DivideEquation.init(one: targets[9], two: targets[10], three: targets[11]);
        equations.append(eq4)
        
        let eq5 = DivideEquation.init(one: targets[12], two: targets[13], three: targets[14]);
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
