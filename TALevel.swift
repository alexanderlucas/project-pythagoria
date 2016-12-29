//
//  TALevel.swift
//  PP2
//
//  Created by Alex Lucas on 1/2/16.
//  Copyright © 2016 tbd. All rights reserved.
//

import UIKit

class TALevel: Level {
    
    var equations = [TAEquation]()
    var givens = [TargetView]()
    var levelNums = TakeAwayNums()
    var nums = [Int]()
    
    init(level:Int, arrayOfTargets:[TargetView]){
        super.init()
        
        nums = levelNums.numbers[level]
        targets = arrayOfTargets
        
        let eq1 = TAEquation.init(one: targets[0], two: targets[1], three: targets[2])
        equations.append(eq1)
        
        let eq2 = TAEquation.init(one: targets[3], two: targets[4], three: targets[5])
        equations.append(eq2)
        
        let eq3 = TAEquation.init(one: targets[6], two: targets[7], three: targets[8])
        equations.append(eq3)
        
        let eq4 = TAEquation.init(one: targets[9], two: targets[10], three: targets[11])
        equations.append(eq4)
        
        let eq5 = TAEquation.init(one: targets[12], two: targets[13], three: targets[14])
        equations.append(eq5)
        
        let eq6 = TAEquation.init(one: targets[15], two: targets[16], three: targets[17])
        equations.append(eq6)
        
        let eq7 = TAEquation.init(one: targets[18], two: targets[19], three: targets[20])
        equations.append(eq7)
        
    }
    
    override func equationsCorrect() -> Bool {
        var ret = true
        for i in 0..<equations.count {
            if(!equations[i].solved()){
                ret = false
            }
        }
        return ret
    }
}