//
//  LevelViewController.swift
//  PP2
//
//  Created by Alex Lucas on 1/2/16.
//  Copyright © 2016 tbd. All rights reserved.
//

import UIKit
import CloudKit

struct defaultsKeys {
    static let level = "0"
}

class LevelViewController: UIViewController {
    var numbers = [NumberView]()
    var targets = [TargetView]()
    var labels = [UILabel]()
    var answers:Any!
    var map:Level!
    var played = false
    var currLevel = 0
    var level = 0
    var levelRecord:CKRecord!
    
    var cv: CheckView?

    
    @IBAction func panNumberView(_ sender: UIPanGestureRecognizer) {
        self.view?.bringSubview(toFront: sender.view!);
        
        let num = self.whichNumber(sender.view as! NumberView);
        
        if(numbers[num].inTarget == true){
            numbers[num].inTarget = false;
            numbers[num].currentTarget!.occupied = false;
            numbers[num].currentTarget = nil
        }
        
        if(sender.state == UIGestureRecognizerState.ended){
            print("hi");
            
            let target = isInTarget(numbers[num]);
            
            
            if(target != nil && target?.occupied == false && target?.isEnabled == false){
                print("moo");
                sender.view!.center = target!.center;
                target?.occupied = true;
                numbers[num].inTarget = true;
                numbers[num].currentTarget = target
                target?.currentNum = numbers[num];
                
            }
            else {
                print("what");
                print(target)
                print(target?.occupied)
                print(target?.isEnabled)
                sender.view!.center = numbers[num].origLocation;
            }
            
        }
        else{
            let translation = sender.translation(in: self.view);
            sender.view!.center = CGPoint(x: sender.view!.center.x + translation.x, y: sender.view!.center.y + translation.y)
            sender.setTranslation(CGPoint.zero, in: self.view);
        }
    }
    
    func whichNumber(_ movedView:NumberView) -> Int {
        for i in 0..<numbers.count{
            if(numbers[i] == movedView){
                return i;
            }
        }
        return -1;
    }
    
    func isInTarget(_ number:UIView) -> TargetView? {
        var maxArea = 0.0;
        var returnView:TargetView = TargetView();
        for i in 0..<targets.count {
            if(intersectRect(number.frame, r2: targets[i].frame) && !targets[i].occupied && !targets[i].isEnabled){
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
    
    
    func intersectRect(_ r1:CGRect, r2:CGRect) -> Bool{
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
    
    func overlapArea(_ r1:CGRect, r2:CGRect) -> CGFloat {
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
            if(!targets[i].occupied && !targets[i].isEnabled){
                ret = false
            }
        }
        return ret;
    }
    
    func putNumbersOnScreen() {
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
            let newView = NumberView(frame: CGRect(x: pointX, y: pointY, width: 85, height: 85));
            newView.number.text = String(i);
            newView.value = i;
            
            let panRecognizer = UIPanGestureRecognizer(target: self, action: #selector(LevelViewController.panNumberView(_:)));
            
            newView.gestureRecognizers = [panRecognizer];
            
            self.view.addSubview(newView);
            
            numbers.append(newView);
        }

    }
    
    func saveLevel(_ lvl:Int) {
//        iCloudKeyStore?.setDouble(Double(lvl), forKey: "level")
//        
//        print(iCloudKeyStore?.doubleForKey("level"))
       
        //let record = CKRecord(recordType: "UserInfo", recordID: CKRecordID(recordName: "hi"))
//        print(lvl)
//        
//        if levelRecord == nil{
//            levelRecord = CKRecord(recordType: "UserInfo", recordID: CKRecordID(recordName: "moo"))
//
//        }
//        levelRecord.setObject(lvl as CKRecordValue, forKey: "level")
//        
//        let container = CKContainer.default()
//        let privateDatabase = container.privateCloudDatabase
//        
//        privateDatabase.fetch(withRecordID: CKRecordID(recordName: "moo"), completionHandler: { record, error in
//            if let fetchError = error {
//                print("An error occurred in \(fetchError)")
//            } else {
//                // Modify the record
//                print("changing record")
//                record!.setObject(lvl, forKey: "level")
//                
//                privateDatabase.saveRecord(record!, completionHandler: { (savedRecord, savedError) -> Void in
//                    if (savedError != nil) {
//                        print(savedError)
//                    }
//                })
//
//            }
//            
//
//        })
        

    
        

    }
    
    /*
    func checkSolutions(lvl:Int) {
        if(allFilled()){
            if(map.equationsCorrect()){
                print("equations correct!")
                check.hidden = true
                if(!played){
                    NSUserDefaults.standardUserDefaults().setInteger(level+1, forKey: "level")
                }
                level = NSUserDefaults.standardUserDefaults().integerForKey("level")
                
                currLevel++
                
                if(currLevel<lvl){
                    next.hidden = false;
                }
                
            }
            else {
                print("incorrect")
            }
        }
        else {
            print("not filled")
        }
        

    }*/
    
    @objc func reset() {
    
        cv?.removeFromSuperview()
        
    }
    
    


}
