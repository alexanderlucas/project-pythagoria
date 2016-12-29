//
//  OperationsView.swift
//  PP2
//
//  Created by Alex Lucas on 6/12/16.
//  Copyright © 2016 tbd. All rights reserved.
//

import UIKit

class OperationsView: UIView {

    var line = false
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        if(line){
        let context = UIGraphicsGetCurrentContext()
        CGContextSetLineWidth(context!, 2.0)
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let components: [CGFloat] = [0.0, 0.0, 1.0, 1.0]
        let color = CGColorCreate(colorSpace, components)
        CGContextSetStrokeColorWithColor(context!, color!)
        
//        let start = (sender as! UIButton).center
//        let x = start.x
//        let y = start.y
        CGContextMoveToPoint(context!, 50, 50)
        
        CGContextAddLineToPoint(context!, 0, 0)
        
        CGContextStrokePath(context!)
        }

    }
 

}
