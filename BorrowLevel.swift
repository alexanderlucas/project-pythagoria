//
//  DifferenceLevel.swift
//  PP2
//
//  Created by Alex Lucas on 1/5/16.
//  Copyright © 2016 tbd. All rights reserved.
//

import UIKit

class BorrowLevel: Level {
    
    var equations = [BorrowEquation]()
    var givens = [TargetView]()
    var levelNums = BorrowNums()
    var nums = [Int]()
    
    init(level:Int, arrayOfTargets:[TargetView]){
        super.init()
        
        nums = levelNums.numbers[level]
        targets = arrayOfTargets
        
        let eq1 = BorrowEquation.init(one: targets[0], two: targets[1], three: targets[2], four: targets[3], five: targets[4], six: targets[5])
        equations.append(eq1)
        
        let eq2 = BorrowEquation.init(one: targets[6], two: targets[7], three: targets[8], four: targets[9], five: targets[10], six: targets[11])
        equations.append(eq2)
        
        let eq3 = BorrowEquation.init(one: targets[12], two: targets[13], three: targets[14], four: targets[15], five: targets[16], six: targets[17])
        equations.append(eq3)
        
        let eq4 = BorrowEquation.init(one: targets[18], two: targets[19], three: targets[20], four: targets[21], five: targets[22], six: targets[23])
        equations.append(eq4)
        
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
