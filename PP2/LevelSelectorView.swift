//
//  LevelSelectorView.swift
//  PP2
//
//  Created by Alex Lucas on 2/27/16.
//  Copyright © 2016 tbd. All rights reserved.
//

import UIKit

class LevelSelectorView: UIView {

    var levelOne = UIButton()
    var levelTwo = UIButton()
    var levelThree =  UIButton()
    var levelFour = UIButton()
    var levelFive = UIButton()
    var levelSix = UIButton()
    var levelSeven = UIButton()
    var levelEight = UIButton()
    var levelNine = UIButton()
    var levelTen = UIButton()
    var levelEleven = UIButton()
    var levelTwelve = UIButton()
    var levelThirteen = UIButton()
    var levelFourteen = UIButton()
    var levelFifteen = UIButton()
    var levelSixteen = UIButton()
    var levelSeventeen = UIButton()
    var levelEighteen = UIButton()
    var levelNineteen = UIButton()
    var levelTwenty = UIButton()

    var levels = [UIButton]()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
       // self.backgroundColor = UIColor.blackColor()
        print("hi")
        print(levels)
        
        levels.append(levelOne)
        levels.append(levelTwo)
        levels.append(levelThree)
        levels.append(levelFour)
        levels.append(levelFive)
        levels.append(levelSix)
        levels.append(levelSeven)
        levels.append(levelEight)
        levels.append(levelNine)
        levels.append(levelTen)
        levels.append(levelEleven)
        levels.append(levelTwelve)
        levels.append(levelThirteen)
        levels.append(levelFourteen)
        levels.append(levelFifteen)
        levels.append(levelSixteen)
        levels.append(levelSeventeen)
        levels.append(levelEighteen)
        levels.append(levelNineteen)
        levels.append(levelTwenty)
        
        var i = 1
        var j = 1
        for var level in levels {
            level = UIButton(frame: CGRectMake(CGFloat((i-1)%5*150),CGFloat((j-1)*150),100,100))
            level.setTitle(String(i), forState: .Normal)
            level.backgroundColor = UIColor.redColor()
            self.addSubview(level)
            if(i%5==0){
                print("true")
                j+=1
            }
            i+=1
        }

        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
