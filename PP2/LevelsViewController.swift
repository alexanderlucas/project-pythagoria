//
//  LevelsViewController.swift
//  Project Pythagoria
//
//  Created by Alex Lucas on 10/30/15.
//  Copyright © 2015 tbd. All rights reserved.
//

import UIKit

class LevelsViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var levelOne: UIButton!
    @IBOutlet weak var levelTwo: UIButton!
    @IBOutlet weak var levelThree: UIButton!
    @IBOutlet weak var levelFour: UIButton!
    @IBOutlet weak var levelFive: UIButton!
    @IBOutlet weak var levelSix: UIButton!
    @IBOutlet weak var levelSeven: UIButton!
    @IBOutlet weak var levelEight: UIButton!
    @IBOutlet weak var levelNine: UIButton!
    @IBOutlet weak var levelTen: UIButton!
    @IBOutlet weak var levelEleven: UIButton!
    @IBOutlet weak var levelTwelve: UIButton!
    @IBOutlet weak var levelThirteen: UIButton!
    @IBOutlet weak var levelFourteen: UIButton!
    @IBOutlet weak var levelFifteen: UIButton!
    @IBOutlet weak var levelSixteen: UIButton!
    @IBOutlet weak var levelSeventeen: UIButton!
    @IBOutlet weak var levelEighteen: UIButton!
    @IBOutlet weak var levelNineteen: UIButton!
    @IBOutlet weak var levelTwenty: UIButton!
    
    var levels:[UIButton] = [];
   
    var student:Student!;
    
    var puzzle:String = "";

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("reloading view??")

        // Do any additional setup after loading the view.

        nameLabel.text = puzzle;
        
        levels.append(levelOne)
        levels.append(levelTwo)
        levels.append(levelThree)
        levels.append(levelFour)
        levels.append(levelFive)
        levels.append(levelSix)
        levels.append(levelSeven)
        levels.append(levelEight)
        levels.append(levelNine)
        levels.append(levelTen)
        levels.append(levelEleven)
        levels.append(levelTwelve)
        levels.append(levelThirteen)
        levels.append(levelFourteen)
        levels.append(levelFifteen)
        levels.append(levelSixteen)
        levels.append(levelSeventeen)
        levels.append(levelEighteen)
        levels.append(levelNineteen)
        levels.append(levelTwenty)
        
        
    }
    
    func disableLevelsFrom(index:Int){
        for i in index ..< levels.count {
            levels[i].enabled = false;
        }
    }
    
    func updateNumbers(){
        for var i=0; i<20; i++ {
            levels[i].enabled = true;
        }
        var lev = student.currentLevel

        if(puzzle == "Add"){
            if(lev >= 20){
                lev = 20
            }
            else {
                disableLevelsFrom(lev+1);
            }

            for var i = lev-1; i>=0; i-- {
                levels[i].tintColor = UIColor.redColor();
            }
            

        }
        else if(puzzle == "Sum"){
            if(student.currentLevel < 20){
                disableLevelsFrom(0);
                return;
            }
            else if(student.currentLevel >= 40){
                lev = 20;
            } else {
                lev = lev%20;
                disableLevelsFrom(lev+1);
            }
            
            for var i = lev-1; i>=0; i-- {
                levels[i].tintColor = UIColor.redColor();
            }

        }
        else if(puzzle == "Take Away"){
            if(student.currentLevel < 40){
                disableLevelsFrom(0)
                return;
            }
            else if(student.currentLevel >= 60){
                lev = 20;
            }
            else {
                lev = lev%20;
                disableLevelsFrom(lev);
            }

            for var i = lev-1; i>=0; i-- {
                levels[i].tintColor = UIColor.redColor();

            }
        }
        else if(puzzle == "Subtract"){
            if(student.currentLevel < 60){
                disableLevelsFrom(0)
                return;
            }
            else if(student.currentLevel >= 80){
                lev = 20;
            }
            else {
                lev = lev%20;
                disableLevelsFrom(lev);
            }
            
            for var i = lev-1; i>=0; i-- {
                levels[i].tintColor = UIColor.redColor();
                
            }
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressed(sender: UIButton) {
        print(Int((sender.titleLabel?.text)!));
        var segue = "";
        switch puzzle {
        case "Add":
            segue = "showAddPuzzle";
        case "Sum":
            segue = "showSumPuzzle";
        case "Take Away":
            segue = "showTakeAwayPuzzle";
        case "Subtract":
            segue = "showSubtractPuzzle";
        default:
            segue = "error"
            
        }
        print(segue);
        //self.performSegueWithIdentifier(segue, sender: self);
    }
    
    
    @IBAction func backButtonPressed(sender: AnyObject) {
        print("hi");
self.navigationController?.popViewControllerAnimated(true)
    }

    
    override func viewWillAppear(animated: Bool) {
        updateNumbers();
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        if let destinationVC = segue.destinationViewController as? AddLevelViewController
        {
            destinationVC.student = student;
            let lvl = Int((sender as! UIButton).titleLabel!.text!)! - 1;
            if(lvl<student.currentLevel%20){
                destinationVC.played = true;
            }
            destinationVC.level = lvl;
            
        }

        // Pass the selected object to the new view controller.
    }
    

}
