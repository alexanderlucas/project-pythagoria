//
//  SumLevel.swift
//  Project Pythagoria
//
//  Created by Alex Lucas on 10/9/15.
//  Copyright © 2015 tbd. All rights reserved.
//

import UIKit

class AddLevel: Level {
    
    var equations = [SimpleEquation]()
    var levelSums = AddLevelSums()
    var sums = [Int]()
    var template:String!
    
    init(level:Int, arrayOfTargets:[TargetView]){
        super.init();
        
        template = nil;
        
        sums = levelSums.answers[level];
        targets = arrayOfTargets;
        
        let eq1 = SimpleEquation.init(one: targets[0], two: targets[1], s: sums[0]);
        equations.append(eq1)

        let eq2 = SimpleEquation.init(one: targets[2], two: targets[3], s: sums[1]);
        equations.append(eq2)

        let eq3 = SimpleEquation.init(one: targets[4], two: targets[5], s: sums[2]);
        equations.append(eq3)

        let eq4 = SimpleEquation.init(one: targets[6], two: targets[7], s: sums[3]);
        equations.append(eq4)

        let eq5 = SimpleEquation.init(one: targets[8], two: targets[9], s: sums[4]);
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
