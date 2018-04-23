//
//  numberView.swift
//  PanGestureDemo
//
//  Created by Alex Lucas on 10/9/15.
//  Copyright © 2015 tbd. All rights reserved.
//

import UIKit

class NumberView: UIView {

    var origLocation:CGPoint = CGPoint(x: 0.0, y: 0.0);
    var number: UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: 85, height: 85));
    var value:Int!
    var inTarget = false;
    var currentTarget:TargetView?;

    override init(frame: CGRect){
        super.init(frame: frame);
        
        origLocation = self.center;
        //initialization


        number.textAlignment = NSTextAlignment.center;
        number.font = UIFont.systemFont(ofSize: 60);
        
        self.addSubview(number);

        currentTarget = nil;
        
        //randomize color
        
        self.backgroundColor = UIColor(red: 220/255.0, green: 0, blue: 16/255.0, alpha: 1);
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder);
        
        origLocation = self.center;
        

        
    }
    

    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
