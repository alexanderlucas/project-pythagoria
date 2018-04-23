//
//  PlusLevel.swift
//  PP2
//
//  Created by Alex Lucas on 5/25/16.
//  Copyright © 2016 tbd. All rights reserved.
//

import UIKit

class PlusLevel: Level {
    
    var equations = [PlusEquation]()
    var givens = [TargetView]()
    var levelNums = SumLevelNums()
    var nums = [Int]()
    
    init(level:Int, arrayOfTargets:[TargetView]){
        super.init()
        
        nums = levelNums.numbers[level]
        targets = arrayOfTargets
        
        let eq1 = PlusEquation.init(one: targets[0], two: targets[1], three: targets[2], four: targets[3], five: targets[4], six: targets[5], seven: targets[6], eight: targets[7])
        equations.append(eq1)
        
        let eq2 = PlusEquation.init(one: targets[8], two: targets[9], three: targets[10], four: targets[11], five: targets[12], six: targets[13], seven: targets[14])
        equations.append(eq2)
        
        let eq3 = PlusEquation.init(one: targets[15], two: targets[16], three: targets[17], four: targets[18], five: targets[19])
        equations.append(eq3)
       
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
