//
//  MultiViewController.swift
//  PP2
//
//  Created by Alex Lucas on 1/16/16.
//  Copyright © 2016 tbd. All rights reserved.
//

import UIKit

class MultiViewController: LevelViewController {
    
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
    @IBOutlet weak var nextButton: UIButton!

    @IBOutlet var background: UIView!
    
    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var resetButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        answers = MultiNums()
        
        putNumbersOnScreen()
        
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
        
        map = MultiLevel.init(level: currLevel, arrayOfTargets: targets)
        
        updateLabels()
        
        nextButton.isHidden = true

    }
    
    func disableTargets() {
        for i in 0..<targets.count {
            targets[i].isEnabled = false;
        }
    }
    
    func updateLabels() {
        for i in 0..<labels.count {
            labels[i].text = String((answers as! MultiNums).numbers[currLevel][i])
        }
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func checkButtonPressed(_ sender: AnyObject) {
        if(allFilled()){
            if(map.equationsCorrect()){
                print("correct")
                check.isHidden = true;
                if(!played){
                    level += 1
                }
                print(level)
                saveLevel(level)
                
                currLevel += 1
                
                super.cv = CheckView.init(frame: CGRect(x: 50, y: 50, width: 500, height: 500), correct: true, parent: self)
                
                
                if(currLevel<20){
                    nextButton.isHidden = false;
                }
            }
            else {
                print("incorrect")
                super.cv = CheckView.init(frame: CGRect(x: 50, y: 50, width: 500, height: 500), correct: false, parent: self)
            }
            background.addSubview(super.cv!)
            
            nextButton.isHidden = true;
            check.isHidden = false;
            
            check.isEnabled = false
            nextButton.isEnabled = false
            backButton.isEnabled = false
            resetButton.isEnabled = false
            
        }
        else {
            print("not filled")
        }
    }
    
    @IBAction func nextButtonPressed(_ sender: AnyObject) {
        reset()
    }
    
    override func reset() {
        super.reset()

        for i in 0..<numbers.count {
            numbers[i].center = numbers[i].origLocation;
            let target = numbers[i].currentTarget
            target!.occupied = false;
            target!.currentNum = nil
            numbers[i].currentTarget = nil
            numbers[i].inTarget = false
        }
        updateLabels()
        
        map = MultiLevel.init(level: currLevel, arrayOfTargets: targets); //map
        
        nextButton.isHidden = true;
        check.isHidden = false;
        
        check.isEnabled = true
        nextButton.isEnabled = true
        backButton.isEnabled = true
        resetButton.isEnabled = true
    }
    
    @IBAction func bringBackButtonPressed(_ sender: AnyObject) {
        for i in 0..<numbers.count {
            numbers[i].center = numbers[i].origLocation;
            numbers[i].currentTarget = nil
            numbers[i].inTarget = false
        }
        
        for i in 0..<targets.count {
            targets[i].occupied = false;
            targets[i].currentNum = nil
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
