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
    
    var parentVC = LevelViewController()
    
    init(frame: CGRect, correct: Bool, parent: LevelViewController){
        super.init(frame: frame)

        let midx = frame.midX
        let miny = frame.minY
        button.frame = CGRect(x: midx - 50, y: miny + 300, width: 100, height: 100)
        label.frame = CGRect(x: midx-50, y: miny + 100, width: 100, height: 50)

        
        if(correct) {
            button.setTitle("Next", for: UIControlState())
            label.text = "Correct!"
            button.addTarget(parent, action: Selector(("backButtonPressed:")), for: .touchUpInside)

        }
        else {
            button.setTitle("Try Again", for: UIControlState())
            label.text = "Incorrect"
            //#selector(reset(_:)
            //Selector(("reset:"))
            button.addTarget(parent, action: Selector(("reset")), for: .touchUpInside)
        }
        
        self.backgroundColor = UIColor.blue
        button.backgroundColor = UIColor.white
        label.backgroundColor = UIColor.white
        button.setTitleColor(UIColor.black, for: UIControlState())
        label.textColor = UIColor.black
        self.addSubview(button)
        self.addSubview(label)

        parentVC = parent
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
