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
    override func draw(_ rect: CGRect) {
        // Drawing code
        if(line){
        let context = UIGraphicsGetCurrentContext()
        context!.setLineWidth(2.0)
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let components: [CGFloat] = [0.0, 0.0, 1.0, 1.0]
        let color = CGColor(colorSpace: colorSpace, components: components)
        context!.setStrokeColor(color!)
        
//        let start = (sender as! UIButton).center
//        let x = start.x
//        let y = start.y
        context!.move(to: CGPoint(x: 50, y: 50))
        
        context!.addLine(to: CGPoint(x: 0, y: 0))
        
        context!.strokePath()
        }

    }
 

}
