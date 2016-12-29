//
//  CarryViewController.swift
//  PP2
//
//  Created by Alex Lucas on 1/16/16.
//  Copyright © 2016 tbd. All rights reserved.
//

import UIKit

class CarryViewController: LevelViewController {
    
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

    @IBOutlet weak var next: UIButton!
    @IBOutlet weak var check: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        answers = CarryNums()
        
        putNumbersOnScreen();
        
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
        
        map = CarryLevel.init(level: currLevel, arrayOfTargets: targets)
        
        updateLabels()
        next.hidden = true;

    }
    
    func updateLabels(){
        for i in 0..<targets.count {
            let number = (answers as! CarryNums).numbers[currLevel][i]
            if(number == -1){
                targets[i].text = ""
                targets[i].backgroundColor = UIColor.blackColor()
                targets[i].enabled = false
            }
            else {
                targets[i].backgroundColor = UIColor.greenColor()
                targets[i].text = String(number)
                targets[i].enabled = true
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func checkButtonPressed(sender: AnyObject) {
        if(allFilled()){
            if(map.equationsCorrect()){
                print("equations correct!")
                check.hidden = true
                if(!played){
                    level += 1
                }
                
                saveLevel(level)
                
                
                currLevel+=1
                
                if(currLevel<20){
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
        
    }

    @IBAction func nextButtonPressed(sender: AnyObject) {
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
        
        map = CarryLevel.init(level: currLevel, arrayOfTargets: targets); //map
        
        next.hidden = true;
        check.hidden = false;
    }
    
    @IBAction func bringBackButtonPressed(sender: AnyObject) {
        for i in 0..<numbers.count {
            numbers[i].center = numbers[i].origLocation;
            targets[i].occupied = false;
            targets[i].currentNum = nil
            numbers[i].currentTarget = nil
            numbers[i].inTarget = false
        }
    }
    
    @IBAction func backButtonPressed(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true);
        
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
