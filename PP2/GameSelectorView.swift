//
//  GameSelectorView.swift
//  PP2
//
//  Created by Alex Lucas on 2/28/16.
//  Copyright © 2016 tbd. All rights reserved.
//

import UIKit

class GameSelectorView: UIView {

    var buttons = [UIButton]()
    
    init(frame: CGRect, games: Int){
        super.init(frame: frame)
        
        for i in 0..<games {
            let button = UIButton(frame: CGRectMake(284,CGFloat(250*(i+1)),200,200))
            button.setTitle(String(i+1), forState: .Normal)
            button.backgroundColor = UIColor.redColor()
            self.addSubview(button)
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
