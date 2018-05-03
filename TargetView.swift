//
//  TargetView.swift
//  PanGestureDemo
//
//  Created by Alex Lucas on 10/9/15.
//  Copyright © 2015 tbd. All rights reserved.
//

import UIKit

class TargetView: UIView {
    var number: UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: 85, height: 75));

    var occupied = false;
    
    var currentNum:NumberView!
    
    var isEnabled = true;
    
    func type() -> String {
        return "TargetView";
    }
    
    override init(frame: CGRect){
        super.init(frame: frame);
        
        //initialization
        

        
//        currentNum = nil;
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder);
        number.textAlignment = NSTextAlignment.center;
        number.font = UIFont(name: "ChalkboardSE-Bold", size: 50)
        number.textColor = .black
        
        self.addSubview(number);

    }
    

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
