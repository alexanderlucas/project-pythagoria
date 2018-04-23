//
//  SumLevelViewController.swift
//  Project Pythagoria
//
//  Created by Alex Lucas on 11/5/15.
//  Copyright © 2015 tbd. All rights reserved.
//

import UIKit

class SumLevelViewController: UIViewController {
    
    //variables
    @IBOutlet weak var targetZero: TargetView!
    @IBOutlet weak var targetOne: TargetView!
    @IBOutlet weak var targetTwo: TargetView!
    @IBOutlet weak var targetThree: TargetView!
    @IBOutlet weak var targetFour: TargetView!
    @IBOutlet weak var targetFive: TargetView!
    @IBOutlet weak var targetSix: TargetView!
    @IBOutlet weak var targetSeven: TargetView!
    @IBOutlet weak var targetEight: TargetView!
    @IBOutlet weak var targetNine: TargetView!
    @IBOutlet weak var targetTen: TargetView!
    @IBOutlet weak var targetEleven: TargetView!
    @IBOutlet weak var targetTwelve: TargetView!
    @IBOutlet weak var targetThirteen: TargetView!
    @IBOutlet weak var targetFourteen: TargetView!
    @IBOutlet weak var targetFifteen: TargetView!
    @IBOutlet weak var targetSixteen: TargetView!
    @IBOutlet weak var targetSeventeen: TargetView!
    @IBOutlet weak var targetEighteen: TargetView!
    @IBOutlet weak var targetNineteen: TargetView!
    @IBOutlet weak var targetTwenty: TargetView!
    @IBOutlet weak var targetTwentyOne: TargetView!
    @IBOutlet weak var targetTwentyTwo: TargetView!
    @IBOutlet weak var targetTwentyThree: TargetView!
    
    var numbers = [NumberView]()
    var targets = [TargetView]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        for i in 0..<10 {
            let mod = i%5;
            let pointX = CGFloat(135*mod + 63);
            var pointY = CGFloat(0);
            if(i<5) {
                pointY = CGFloat(740);
            }
            else {
                pointY = CGFloat(863);
            }
            let newView = NumberView(frame: CGRectMake(pointX, pointY, 85, 85));
            newView.number.text = String(i);
            newView.value = i;
            
            let panRecognizer = UIPanGestureRecognizer(target: self, action: "panNumberView:");
            
            newView.gestureRecognizers = [panRecognizer];
            
            self.view.addSubview(newView);
            
            numbers.append(newView);
        }
        
        targets.append(targetZero)
        targets.append(targetOne)
        targets.append(targetTwo)
        targets.append(targetThree)
        targets.append(targetFour)
        targets.append(targetFive)
        targets.append(targetSix)
        targets.append(targetSeven)
        targets.append(targetEight)
        targets.append(targetNine)
        targets.append(targetTen)
        targets.append(targetEleven)
        targets.append(targetTwelve)
        targets.append(targetThirteen)
        targets.append(targetFourteen)
        targets.append(targetFifteen)
        targets.append(targetSixteen)
        targets.append(targetSeventeen)
        targets.append(targetEighteen)
        targets.append(targetNineteen)
        targets.append(targetTwenty)
        targets.append(targetTwentyOne)
        targets.append(targetTwentyTwo)
        targets.append(targetTwentyThree)
        
        
        
    }
    
    @IBAction func panNumberView(sender: UIPanGestureRecognizer) {
        self.view?.bringSubviewToFront(sender.view!);
        
        let num = self.whichNumber(sender.view as! NumberView);
        
        if(numbers[num].inTarget == true){
            numbers[num].inTarget = false;
            numbers[num].currentTarget!.occupied = false;
            numbers[num].currentTarget = nil
        }
        
        if(sender.state == UIGestureRecognizerState.Ended){
            //            let pannedIntoTarget = isInTarget();
            //            if(pannedIntoTarget){
            //                self.center = target!.center;
            //
            //            }
            //            else {
            //                self.center = origLocation;
            //            }
            //            if(intersectRect(redSquare.frame, r2: greenSquare.frame)){
            //                print("overlap")
            //                print(overlapArea(redSquare.frame, r2: greenSquare.frame))
            //            }
            print("hi");
            
            let target = isInTarget(numbers[num]);
            
            
            if(target != nil && target?.occupied == false){
                print("moo");
                sender.view!.center = target!.center;
                target?.occupied = true;
                numbers[num].inTarget = true;
                numbers[num].currentTarget = target
                target?.currentNum = numbers[num];
                
            }
            else {
                print("what");
                sender.view!.center = numbers[num].origLocation;
            }
            
        }
        else{
            let translation = sender.translationInView(self.view);
            sender.view!.center = CGPoint(x: sender.view!.center.x + translation.x, y: sender.view!.center.y + translation.y)
            sender.setTranslation(CGPointZero, inView: self.view);
        }
    }

    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func whichNumber(movedView:NumberView) -> Int {
        for i in 0..<numbers.count{
            if(numbers[i] == movedView){
                return i;
            }
        }
        return -1;
    }
    
    func isInTarget(number:UIView) -> TargetView? {
        var maxArea = 0.0;
        var returnView:TargetView = TargetView.init();
        for i in 0..<targets.count {
            if(intersectRect(number.frame, r2: targets[i].frame) && !targets[i].occupied){
                let intArea = Double(overlapArea(number.frame, r2: targets[i].frame))
                if(intArea > maxArea){
                    maxArea = Double(overlapArea(number.frame, r2: targets[i].frame))
                    returnView = targets[i]
                }
            }
        }
        if(maxArea == 0){
            return nil;
        }
        return returnView;
    }
    

    func intersectRect(r1:CGRect, r2:CGRect) -> Bool{
        let r2left = r2.origin.x;
        let r2right = r2.origin.x + r2.width;
        let r2bottom = r2.origin.y + r2.height;
        let r2top = r2.origin.y;
        
        let r1left = r1.origin.x;
        let r1right = r1.origin.x + r1.width;
        let r1bottom = r1.origin.y + r1.height;
        let r1top = r1.origin.y;
        
        return !(r2left > r1right || r2right < r1left || r2top > r1bottom || r2bottom < r1top);
        
        
    }
    
    func overlapArea(r1:CGRect, r2:CGRect) -> CGFloat {
        let r2left = r2.origin.x;
        let r2right = r2.origin.x + r2.width;
        let r2bottom = r2.origin.y + r2.height;
        let r2top = r2.origin.y;
        
        let r1left = r1.origin.x;
        let r1right = r1.origin.x + r1.width;
        let r1bottom = r1.origin.y + r1.height;
        let r1top = r1.origin.y;
        
        let left = max(r2left, r1left);
        let right = min(r2right, r1right);
        let bottom = min(r2bottom, r1bottom);
        let top = max(r2top, r1top);
        
        if(bottom-top > 0 && right-left > 0){
            return (bottom-top) * (right-left);
        }
        else {
            return 0;
        }
    }
    
    func allFilled() -> Bool {
        var ret = true
        for i in 0..<targets.count {
            if(!targets[i].occupied){
                ret = false
            }
        }
        return ret;
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
