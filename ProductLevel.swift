//
//  ProductLevel.swift
//  PP2
//
//  Created by Alex Lucas on 6/7/16.
//  Copyright © 2016 tbd. All rights reserved.
//

import UIKit

class ProductLevel: Level {
    
    var equations = [ProductEquation]()
    var levelNums = ProductNums()
    var products = [Int]()
    
    init(level:Int, arrayOfTargets:[TargetView]){
        super.init();
        
        targets = arrayOfTargets;
        
        let eq1 = ProductEquation.init(one: targets[0], two: targets[1], three: targets[2], four: targets[3], five: targets[4], six: targets[5]);
        equations.append(eq1)
        
        let eq2 = ProductEquation.init(one: targets[6], two: targets[7], three: targets[8], four: targets[9], five: targets[10]);
        equations.append(eq2)
        
        let eq3 = ProductEquation.init(one: targets[11], two: targets[12], three: targets[13], four: targets[14], five: targets[15], six: targets[16]);
        equations.append(eq3)
    
        let eq4 = ProductEquation.init(one: targets[17], two: targets[18], three: targets[19], four: targets[20], five: targets[21]);
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
