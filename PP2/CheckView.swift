//
//  CheckView.swift
//  PP2
//
//  Created by Alex Lucas on 6/9/16.
//  Copyright © 2016 tbd. All rights reserved.
//

import UIKit

class CheckView: UIView {

    var button = UIButton()
    var label = UILabel()
    
    init(frame: CGRect, correct: Bool){
        super.init(frame: frame)

        let midx = frame.midX
        let miny = frame.minY
        button.frame = CGRectMake(midx - 50, miny + 300, 100, 100)
        label.frame = CGRectMake(midx-50, miny + 100, 100, 50)

        
        if(correct) {
            button.setTitle("Next", forState: .Normal)
            label.text = "Correct!"
        }
        else {
            button.setTitle("Try Again", forState: .Normal)
            label.text = "Incorrect"
        }
        
        self.backgroundColor = UIColor.blueColor()
        button.backgroundColor = UIColor.whiteColor()
        label.backgroundColor = UIColor.whiteColor()
        button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        label.textColor = UIColor.blackColor()
        self.addSubview(button)
        self.addSubview(label)

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
