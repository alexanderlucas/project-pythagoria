//
//  RemainderLevel.swift
//  PP2
//
//  Created by Alex Lucas on 6/8/16.
//  Copyright © 2016 tbd. All rights reserved.
//

import UIKit

class RemainderLevel: Level {
    
    var equations = [RemainderEquation]()
    var levelNums = RemainderNums()
    var products = [Int]()
    var template:String!
    
    init(level:Int, arrayOfTargets:[TargetView]){
        super.init();
        
        template = nil;
        
        targets = arrayOfTargets;
        
        let eq1 = RemainderEquation.init(one: targets[0], two: targets[1], three: targets[2], four: targets[3]);
        equations.append(eq1)
        
        let eq2 = RemainderEquation.init(one: targets[7], two: targets[8], three: targets[6], four: targets[4], five: targets[5]);
        equations.append(eq2)
        
        let eq3 = RemainderEquation.init(one: targets[12], two: targets[13], three: targets[11], four: targets[9], five: targets[10]);
        equations.append(eq3)
        
        let eq4 = RemainderEquation.init(one: targets[17], two: targets[18], three: targets[16], four: targets[14], five: targets[15]);
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
