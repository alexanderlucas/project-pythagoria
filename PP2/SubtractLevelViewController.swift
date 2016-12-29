//
//  SubtractLevelViewController.swift
//  PP2
//
//  Created by Alex Lucas on 1/2/16.
//  Copyright © 2016 tbd. All rights reserved.
//

import UIKit

class SubtractLevelViewController: LevelViewController {
   
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
    
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    
    @IBOutlet weak var check: UIButton!
    @IBOutlet weak var next: UIButton!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        putNumbersOnScreen()
        
        answers = SubtractNums()
        
        targets.append(targetOne);
        targets.append(targetTwo);
        
        targets.append(targetThree);
        targets.append(targetFour);
        
        targets.append(targetFive);
        targets.append(targetSix);
        
        targets.append(targetSeven);
        targets.append(targetEight);
        
        targets.append(targetNine);
        targets.append(targetTen);
        
        disableTargets()
        
        labels.append(labelOne)
        labels.append(labelTwo)
        labels.append(labelThree)
        labels.append(labelFour)
        labels.append(labelFive)
        
        map = SubtractLevel.init(level: currLevel, arrayOfTargets: targets); //map
        
       // header.text = "Level \(currLevel+1)"
        
        updateLabels()
        
        next.hidden = true;
        
    }
    
    
    func disableTargets() {
        for i in 0..<targets.count {
            targets[i].enabled = false;
        }
    }
    
    func updateLabels() {
        for i in 0..<labels.count {
            labels[i].text = String((answers as! SubtractNums).numbers[currLevel][i])
        }
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func checkButtonPressed(sender: AnyObject) {
        if(allFilled()){
            if(map.equationsCorrect()){
                print("correct")
                check.hidden = true;
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
            targets[i].occupied = false;
            targets[i].currentNum = nil
            numbers[i].currentTarget = nil
            numbers[i].inTarget = false
        }
        updateLabels()
        
        map = SubtractLevel.init(level: currLevel, arrayOfTargets: targets); //map
        
       // header.text = "Level \(currLevel+1)"
        
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
