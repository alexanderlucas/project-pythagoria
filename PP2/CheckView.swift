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
        super.init(frame: CGRect(x: 62, y: 240, width: 644, height: 400))

        let fr = CGRect(x: 62, y: 240, width: 644, height: 400)
        let wid = fr.width/2
//        button = UIButton(frame: CGRect(x: midx - 200, y: miny + 100, width: 400, height: 100))
        button.frame = CGRect(x: wid-50, y: 220, width: 100, height: 100)
        label.frame = CGRect(x: wid-200, y: 50, width: 400, height: 100)

        self.layer.contents = UIImage(named: "popup_bg")?.cgImage

        if(correct) {
            button.layer.contents = UIImage(named: "next")?.cgImage

//            button.setTitle("Next", for: UIControlState())
            label.text = "Correct!"
            button.addTarget(parent, action: Selector(("backButtonPressed:")), for: .touchUpInside)

        }
        else {
//            button.setTitle("Try Again", for: UIControlState())
            button.layer.contents = UIImage(named: "redo_button")?.cgImage

            label.text = "Incorrect"
            //#selector(reset(_:)
            //Selector(("reset:"))
            button.addTarget(parent, action: #selector(LevelViewController.reset), for: .touchUpInside)

        }
        
//        self.backgroundColor = UIColor.blue
//        button.backgroundColor = UIColor.white
//        label.backgroundColor = UIColor.black
        button.setTitleColor(.white, for: UIControlState())
        label.textColor = UIColor.white
        label.font = UIFont(name: "ChalkboardSE-Bold", size: 70)


        label.textAlignment = .center
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
