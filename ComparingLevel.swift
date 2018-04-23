//
//  ComparingLevel.swift
//  PP2
//
//  Created by Alex Lucas on 6/8/16.
//  Copyright © 2016 tbd. All rights reserved.
//

import UIKit


class ComparingLevel: Level {
    
    var equations = [ComparingEquation]()
    var levelNums = ComparingNums()
    var products = [Int]()
    var template:String!
    
    init(level:Int, arrayOfTargets:[TargetView]){
        super.init();
        
        template = nil;
        
        targets = arrayOfTargets;
        
        let eq1 = ComparingEquation.init(one: targets[0], two: targets[1], three: targets[2], four: targets[3], five: targets[4], six: targets[5], seven: targets[6], eight: targets[7], less: true);
        equations.append(eq1)
        
        let eq2 = ComparingEquation.init(one: targets[8], two: targets[9], three: targets[10], four: targets[11], five: targets[12], six: targets[13], seven: targets[14], eight: targets[15], less: false);
        equations.append(eq2)
        
        let eq3 = ComparingEquation.init(one: targets[16], two: targets[17], three: targets[18], four: targets[19], five: targets[20], six: targets[21], seven: targets[22]);
        equations.append(eq3)
        
        
        
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
