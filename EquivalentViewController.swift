//
//  EquivalentViewController.swift
//  PP2
//
//  Created by Alex Lucas on 6/8/16.
//  Copyright © 2016 tbd. All rights reserved.
//

import UIKit

class EquivalentViewController: LevelViewController {

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
    
    @IBOutlet weak var check: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet var background: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        answers = EquivalentNums()
        
        putNumbersOnScreen()
        
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
        
        map = EquivalentLevel.init(level: currLevel, arrayOfTargets: targets)
        
        print("mm")
        updateLabels()
    }
    
    
    func updateLabels(){
        for i in 0..<targets.count {
            let number = (answers as! EquivalentNums).numbers[currLevel][i]
            if(number == -1){
                targets[i].text = ""
                targets[i].backgroundColor = UIColor.black
                targets[i].isEnabled = false
            }
            else {
                targets[i].backgroundColor = UIColor.green
                targets[i].text = String(number)
                targets[i].isEnabled = true
            }
        }
    }
    @IBAction func checkButtonPressed(_ sender: AnyObject) {
        var cv:CheckView
        if(allFilled()){
            if(map.equationsCorrect()){
                print("equations correct!")
                check.isHidden = true
                if(!played){
                    level += 1
                }
                
                saveLevel(level)
                
                
                currLevel+=1
                
                cv = CheckView.init(frame: CGRect(x: 50, y: 50, width: 500, height: 500), correct: true, parent: self)
                
                if(currLevel<20){
                    nextButton.isHidden = false;
                }
                
            }
            else {
                print("incorrect")
                cv = CheckView.init(frame: CGRect(x: 50, y: 50, width: 500, height: 500), correct: false, parent: self)
            }
            background.addSubview(cv)
        }
        else {
            print("not filled")
        }
    }
    
    @IBAction func nextButtonPressed(_ sender: AnyObject) {
        reset()
    }
    
    func reset() {
        for i in 0..<numbers.count {
            numbers[i].center = numbers[i].origLocation;
            let target = numbers[i].currentTarget
            target!.occupied = false;
            target!.currentNum = nil
            numbers[i].currentTarget = nil
            numbers[i].inTarget = false
        }
        updateLabels()
        
        map = EquivalentLevel.init(level: currLevel, arrayOfTargets: targets)//map
        
        // header.text = "Level \(currLevel+1)"
        
        nextButton.isHidden = true;
        check.isHidden = false;
    }
    
    @IBAction func bringBackButtonPressed(_ sender: AnyObject) {
        for i in 0..<numbers.count {
            numbers[i].center = numbers[i].origLocation;
            targets[i].occupied = false;
            targets[i].currentNum = nil
            numbers[i].currentTarget = nil
            numbers[i].inTarget = false
        }
    }
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        self.navigationController?.popViewController(animated: true);
        
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
