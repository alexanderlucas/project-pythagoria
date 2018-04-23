//
//  TargetView.swift
//  PanGestureDemo
//
//  Created by Alex Lucas on 10/9/15.
//  Copyright © 2015 tbd. All rights reserved.
//

import UIKit

class TargetView: UIView {
    
    var enabled = false;

    var occupied = false;
    
    var currentNum:NumberView!
    
    func type() -> String {
        return "TargetView";
    }

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
