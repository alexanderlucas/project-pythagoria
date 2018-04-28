//
//  ViewController.swift
//  Project Pythagoria
//
//  Created by Alex Lucas on 10/9/15.
//  Copyright © 2015 tbd. All rights reserved.
//

import UIKit

class AddLevelViewController: LevelViewController {
    
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
    
    @IBOutlet weak var header: UILabel!
    @IBOutlet weak var check: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet var background: UIView!
    
    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var resetButton: UIButton!
    

    //var student:Student!
    
    override func viewWillAppear(_ animated: Bool) {
        print("ADD PUZZLE!!")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
                
        answers = AddLevelSums();
        
        putNumbersOnScreen();
        
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
        

        map = AddLevel.init(level: currLevel, arrayOfTargets: targets); //map
        
        header.text = "Level \(currLevel+1)"

        updateLabels()
        
        nextButton.isHidden = true;
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func disableTargets() {
        for i in 0..<targets.count {
            targets[i].isEnabled = false;
        }
    }
    
    func updateLabels() {
        for i in 0..<labels.count {
            labels[i].text = String((answers as! AddLevelSums).answers[currLevel][i])
        }

    }
    
    
    @IBAction func nextButtonPressed(_ sender: Any) {
            reset()
    }
    
    @IBAction func bringBackPressed(_ sender: AnyObject) {
        for i in 0..<numbers.count {
            numbers[i].center = numbers[i].origLocation;
            targets[i].occupied = false;
            targets[i].currentNum = nil
            numbers[i].currentTarget = nil
            numbers[i].inTarget = false
        }
        //super.currLevel
    }
    
    @IBAction func checkButton() {
        if(allFilled()){
            if(map.equationsCorrect()){
                print("correct")
                check.isHidden = true;
                if(!played){
                    level += 1
                    played = true
                }
                print(level)
                saveLevel(level)

                currLevel += 1
                
                let defaults = UserDefaults.standard
                defaults.set(String(level), forKey: defaultsKeys.level)
                
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
   
    
   @objc @IBAction func backButtonPressed(_ sender: AnyObject) {
    
    self.navigationController?.popViewController(animated: true);
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        if let destinationVC = segue.destination as? LevelSelectorViewController{
            destinationVC.currentLevel = level;
            destinationVC.updateNumbers();
            
        }
        
        // Pass the selected object to the new view controller.
    }

    override func reset() {
        super.reset()
        for i in 0..<numbers.count {
            numbers[i].center = numbers[i].origLocation;
            targets[i].occupied = false;
            targets[i].currentNum = nil
            numbers[i].currentTarget = nil
            numbers[i].inTarget = false
        }
        updateLabels()
        
        map = AddLevel.init(level: currLevel, arrayOfTargets: targets); //map
        
        header.text = "Level \(currLevel+1)"
        
        nextButton.isHidden = true
        check.isHidden = false
        check.isEnabled = true
        backButton.isEnabled = true
        resetButton.isEnabled = true
    }
}

