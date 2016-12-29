//
//  TimesLevel.swift
//  PP2
//
//  Created by Alex Lucas on 6/7/16.
//  Copyright © 2016 tbd. All rights reserved.
//

import UIKit

class TimesLevel: Level {
    
    var equations = [TimesEquation]()
    var levelNums = TimesNums()
    var products = [Int]()
    var template:String!
    
    init(level:Int, arrayOfTargets:[TargetView]){
        super.init();
        
        template = nil;
        
        targets = arrayOfTargets;
        
        let eq1 = TimesEquation.init(one: targets[0], two: targets[1], three: targets[2], four: targets[3], five: targets[4]);
        equations.append(eq1)
        
        let eq2 = TimesEquation.init(one: targets[5], two: targets[6], three: targets[7], four: targets[8], five: targets[9]);
        equations.append(eq2)
        
        let eq3 = TimesEquation.init(one: targets[10], two: targets[11], three: targets[12], four: targets[13]);
        equations.append(eq3)
        
        let eq4 = TimesEquation.init(one: targets[14], two: targets[15], three: targets[16]);
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
