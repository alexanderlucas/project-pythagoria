//
//  LevelsViewController.swift
//  Project Pythagoria
//
//  Created by Alex Lucas on 10/30/15.
//  Copyright © 2015 tbd. All rights reserved.
//

import UIKit

class LevelSelectorViewController: UIViewController {
    
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
    
    var currentLevel = 0
   
    //var student:Student!;
    
    var puzzle:String = "";
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("reloading view??")
        print(puzzle)

        // Do any additional setup after loading the view.

        //nameLabel.text = puzzle;
        
        
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
        currentLevel = 1000
        
    }
    
    func disableLevelsFrom(_ index:Int){
        for i in index ..< levels.count {
            levels[i].isEnabled = false;
        }
    }
    
    func updateNumbers(){
        //for var i=0; i<20; i+=1
        
        for level in levels{
            level.isEnabled = true;
        }
        //var lev = student.currentLevel
        var lev = currentLevel
        print(lev)
        
        
        if (lev == 0){
            
        }
        //var lev = 0

        if(puzzle == "Add"){
            if(lev >= 20){
                lev = 20
            }
            else {
                disableLevelsFrom(lev+1);
            }

            //for var i = lev-1; i>=0; i-=1
            
            

        }
        else if(puzzle == "Sum"){
            if(lev < 20){
                disableLevelsFrom(0);
                return;
            }
            else if(lev >= 40){
                lev = 20;
            } else {
                lev = lev%20;
                disableLevelsFrom(lev+1);
            }

        }
        else if(puzzle == "Take Away"){
            if(lev < 40){
                disableLevelsFrom(0)
                return;
            }
            else if(lev >= 60){
                lev = 20;
            }
            else {
                lev = lev%20;
                disableLevelsFrom(lev+1);
            }

     
        }
        else if(puzzle == "Subtract"){
            if(lev < 60){
                disableLevelsFrom(0)
                return;
            }
            else if(lev >= 80){
                lev = 20;
            }
            else {
                lev = lev%20;
                disableLevelsFrom(lev+1);
            }
            
  
        }
        else if(puzzle == "Borrow"){
            if(lev < 80){
                disableLevelsFrom(0)
                return;
            }
            else if(lev >= 100){
                lev = 20;
            }
            else {
                lev = lev%20;
                disableLevelsFrom(lev+1);
            }
            
  
        }
        else if(puzzle == "Difference"){
            if(lev < 100){
                disableLevelsFrom(0)
                return;
            }
            else if(lev >= 120){
                lev = 20;
            }
            else {
                lev = lev%20;
                disableLevelsFrom(lev+1);
            }
            
  
        }
        else if(puzzle == "Carry"){
            if(lev < 120){
                disableLevelsFrom(0)
                return;
            }
            else if(lev >= 140){
                lev = 20;
            }
            else {
                lev = lev%20;
                disableLevelsFrom(lev+1);
            }
            

        }
        else if(puzzle == "Multi"){
            if(lev < 140){
                disableLevelsFrom(0)
                return;
            }
            else if(lev >= 160){
                lev = 20;
            }
            else {
                lev = lev%20;
                disableLevelsFrom(lev+1);
            }
            
        }
        else if(puzzle == "Plus"){
            if(lev < 160){
                disableLevelsFrom(0)
                return;
            }
            else if(lev >= 180){
                lev = 20;
            }
            else {
                lev = lev%20;
                disableLevelsFrom(lev+1);
            }
            
        }
        else if(puzzle == "Product"){
            if(lev < 160){
                disableLevelsFrom(0)
                return;
            }
            else if(lev >= 180){
                lev = 20;
            }
            else {
                lev = lev%20;
                disableLevelsFrom(lev+1);
            }
            
        }
        else if(puzzle == "Times"){
            if(lev < 160){
                disableLevelsFrom(0)
                return;
            }
            else if(lev >= 180){
                lev = 20;
            }
            else {
                lev = lev%20;
                disableLevelsFrom(lev+1);
            }
            
        }
        else if(puzzle == "Cation"){
            if(lev < 160){
                disableLevelsFrom(0)
                return;
            }
            else if(lev >= 180){
                lev = 20;
            }
            else {
                lev = lev%20;
                disableLevelsFrom(lev+1);
            }
            
        }
        else if(puzzle == "Divide"){
            if(lev < 160){
                disableLevelsFrom(0)
                return;
            }
            else if(lev >= 180){
                lev = 20;
            }
            else {
                lev = lev%20;
                disableLevelsFrom(lev+1);
            }
            
        }
        else if(puzzle == "Remainder"){
            if(lev < 160){
                disableLevelsFrom(0)
                return;
            }
            else if(lev >= 180){
                lev = 20;
            }
            else {
                lev = lev%20;
                disableLevelsFrom(lev+1);
            }
            
        }
        else if(puzzle == "Equivalent"){
            if(lev < 160){
                disableLevelsFrom(0)
                return;
            }
            else if(lev >= 180){
                lev = 20;
            }
            else {
                lev = lev%20;
                disableLevelsFrom(lev+1);
            }
            
        }
        else if(puzzle == "Comparing"){
            if(lev < 160){
                disableLevelsFrom(0)
                return;
            }
            else if(lev >= 180){
                lev = 20;
            }
            else {
                lev = lev%20;
                disableLevelsFrom(lev+1);
            }
            
        }

        
        for i in 0...lev-1{
            levels[i].tintColor = UIColor.red;
        }
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        print(Int((sender.titleLabel?.text)!));
        var segue = "";
        print("puzzle")
        print(puzzle)
        switch puzzle {
        case "Add":
            segue = "showAddPuzzle";
        case "Sum":
            segue = "showSumPuzzle";
        case "Take Away":
            segue = "showTakeAwayPuzzle";
        case "Subtract":
            segue = "showSubtractPuzzle";
        case "Borrow":
            segue = "showBorrowPuzzle";
        case "Difference":
            segue = "showDifferencePuzzle"
        case "Carry":
            segue = "showCarryPuzzle"
        case "Multi":
            segue = "showMultiPuzzle"
        case "Plus":
            segue = "showPlusPuzzle"
        case "Product":
            segue = "showProductPuzzle"
        case "Times":
            segue = "showTimesPuzzle"
        case "Cation":
            segue = "showCationPuzzle"
        case "Divide":
            segue = "showDividePuzzle"
        case "Remainder":
            segue = "showRemainderPuzzle"
        case "Equivalent":
            segue = "showEquivalentPuzzle"
        case "Comparing":
            segue = "showComparingPuzzle"
        default:
            segue = "error"
            
        }
        print(puzzle)
        print(segue);
        self.performSegue(withIdentifier: segue, sender: sender);
    }
    
    
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        print("hi");
        self.navigationController?.popViewController(animated: true)
    }

    
    override func viewWillAppear(_ animated: Bool) {
        updateNumbers();
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        let level = currentLevel
        print(level)
        print("hi")
        let lvl = Int((sender as! UIButton).titleLabel!.text!)! - 1;
        print(lvl)

        let destinationVC = segue.destination as? LevelViewController

        var greater = false
        print(destinationVC)
        print(greater)
        //cases
        switch destinationVC {
        case is AddLevelViewController:
            if(level>20){
                greater = true;
            }
        case is SumLevelViewController:
            if(level>40){
                greater = true;
            }
        case is TakeAwayViewController:
            if(level>60){
                greater = true;
            }
        case is SubtractLevelViewController:
            if(level>80){
                greater = true;
            }
        case is BorrowViewController:
            if(level>100){
                greater = true;
            }
        case is DifferenceViewController:
            if(level>120){
                greater = true;
            }
        case is CarryViewController:
            if(level>140){
                greater = true;
            }
        case is MultiViewController:
            if(level>160){
                greater = true;
            }
        
        default:
            greater = false
        }
        
        if(lvl<level%20 || greater){
            destinationVC!.played = true;
        }
        
        destinationVC!.level = level;
        destinationVC!.currLevel = lvl

//        if let destinationVC = segue.destinationViewController as? AddLevelViewController
//        {
//            //destinationVC.student = student;
//            let lvl = Int((sender as! UIButton).titleLabel!.text!)! - 1;
//            if(lvl<level%20 || level>20){
//                destinationVC.played = true;
//            }
//            destinationVC.level = level;
//            destinationVC.currLevel = lvl
//            
//        }
//        if let destinationVC = segue.destinationViewController as? SumLevelViewController {
//            print("gonna do it")
//            let lvl = Int((sender as! UIButton).titleLabel!.text!)! - 1;
//            if(level > 40 || lvl<(level)%20){
//                destinationVC.played = true;
//                print("played?")
//            }
//            print("here goes nothing")
//            destinationVC.level = level;
//            destinationVC.currLevel = lvl
//        }
//        if let destinationVC = segue.destinationViewController as? TakeAwayViewController {
//            print("gonna do it")
//            let lvl = Int((sender as! UIButton).titleLabel!.text!)! - 1;
//            if(level > 60 || lvl<(level)%20){
//                destinationVC.played = true;
//                print("played?")
//            }
//            print("here goes nothing")
//            destinationVC.level = level;
//            destinationVC.currLevel = lvl
//        }
//        if let destinationVC = segue.destinationViewController as? SubtractLevelViewController {
    }
    

}
