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
    @IBOutlet weak var levelTwentyOne: UIButton!
    @IBOutlet weak var levelTwentyTwo: UIButton!
    @IBOutlet weak var levelTwentyThree: UIButton!
    @IBOutlet weak var levelTwentyFour: UIButton!
    @IBOutlet weak var levelTwentyFive: UIButton!
    @IBOutlet weak var levelTwentySix: UIButton!
    @IBOutlet weak var levelTwentySeven: UIButton!
    @IBOutlet weak var levelTwentyEight: UIButton!
    @IBOutlet weak var levelTwentyNine: UIButton!
    @IBOutlet weak var levelThirty: UIButton!
    @IBOutlet weak var levelThirtyOne: UIButton!
    @IBOutlet weak var levelThirtyTwo: UIButton!
    @IBOutlet weak var levelThirtyThree: UIButton!
    @IBOutlet weak var levelThirtyFour: UIButton!
    @IBOutlet weak var levelThirtyFive: UIButton!
    @IBOutlet weak var levelThirtySix: UIButton!
    @IBOutlet weak var levelThirtySeven: UIButton!
    @IBOutlet weak var levelThirtyEight: UIButton!
    @IBOutlet weak var levelThirtyNine: UIButton!
    @IBOutlet weak var levelForty: UIButton!
    @IBOutlet weak var levelFortyOne: UIButton!
    @IBOutlet weak var levelFortyTwo: UIButton!
    @IBOutlet weak var levelFortyThree: UIButton!
    @IBOutlet weak var levelFortyFour: UIButton!
    @IBOutlet weak var levelFortyFive: UIButton!
    @IBOutlet weak var levelFortySix: UIButton!
    @IBOutlet weak var levelFortySeven: UIButton!
    @IBOutlet weak var levelFortyEight: UIButton!
    @IBOutlet weak var levelFortyNine: UIButton!
    @IBOutlet weak var levelFifty: UIButton!
    @IBOutlet weak var levelFiftyOne: UIButton!
    @IBOutlet weak var levelFiftyTwo: UIButton!
    @IBOutlet weak var levelFiftyThree: UIButton!
    @IBOutlet weak var levelFiftyFour: UIButton!
    @IBOutlet weak var levelFiftyFive: UIButton!
    @IBOutlet weak var levelFiftySix: UIButton!
    @IBOutlet weak var levelFiftySeven: UIButton!
    @IBOutlet weak var levelFiftyEight: UIButton!
    @IBOutlet weak var levelFiftyNine: UIButton!
    @IBOutlet weak var levelSixty: UIButton!
    @IBOutlet weak var levelSixtyOne: UIButton!
    @IBOutlet weak var levelSixtyTwo: UIButton!
    @IBOutlet weak var levelSixtyThree: UIButton!
    @IBOutlet weak var levelSixtyFour: UIButton!
    @IBOutlet weak var levelSixtyFive: UIButton!
    @IBOutlet weak var levelSixtySix: UIButton!
    @IBOutlet weak var levelSixtySeven: UIButton!
    @IBOutlet weak var levelSixtyEight: UIButton!
    @IBOutlet weak var levelSixtyNine: UIButton!
    @IBOutlet weak var levelSeventy: UIButton!
    @IBOutlet weak var levelSeventyOne: UIButton!
    @IBOutlet weak var levelSeventyTwo: UIButton!
    @IBOutlet weak var levelSeventyThree: UIButton!
    @IBOutlet weak var levelSeventyFour: UIButton!
    @IBOutlet weak var levelSeventyFive: UIButton!
    @IBOutlet weak var levelSeventySix: UIButton!
    @IBOutlet weak var levelSeventySeven: UIButton!
    @IBOutlet weak var levelSeventyEight: UIButton!
    @IBOutlet weak var levelSeventyNine: UIButton!
    @IBOutlet weak var levelEighty: UIButton!

    @IBOutlet weak var level1View: UIView!
    @IBOutlet weak var level2View: UIView!
    @IBOutlet weak var level3View: UIView!
    @IBOutlet weak var level4View: UIView!
    var levels:[UIButton] = [];
    
    var currentLevel = 0
   
    //var student:Student!;
    
    let adds = ["showAddPuzzle", "showSumPuzzle", "showCarryPuzzle", "showPlusPuzzle"]
    let subs = ["showSubtractPuzzle", "showDifferencePuzzle", "showTakeAwayPuzzle", "showBorrowPuzzle"]
    let mult = ["showMultiPuzzle", "showProductPuzzle", "showTimesPuzzle", "showCationPuzzle"]
    let div = ["showDividePuzzle", "showRemainderPuzzle", "showEquivalentPuzzle", "showComparingPuzzle"]

    
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
        levels.append(levelTwentyOne)
        levels.append(levelTwentyTwo)
        levels.append(levelTwentyThree)
        levels.append(levelTwentyFour)
        levels.append(levelTwentyFive)
        levels.append(levelTwentySix)
        levels.append(levelTwentySeven)
        levels.append(levelTwentyEight)
        levels.append(levelTwentyNine)
        levels.append(levelThirty)
        levels.append(levelThirtyOne)
        levels.append(levelThirtyTwo)
        levels.append(levelThirtyThree)
        levels.append(levelThirtyFour)
        levels.append(levelThirtyFive)
        levels.append(levelThirtySix)
        levels.append(levelThirtySeven)
        levels.append(levelThirtyEight)
        levels.append(levelThirtyNine)
        levels.append(levelForty)
        levels.append(levelFortyOne)
        levels.append(levelFortyTwo)
        levels.append(levelFortyThree)
        levels.append(levelFortyFour)
        levels.append(levelFortyFive)
        levels.append(levelFortySix)
        levels.append(levelFortySeven)
        levels.append(levelFortyEight)
        levels.append(levelFortyNine)
        levels.append(levelFifty)
        levels.append(levelFiftyOne)
        levels.append(levelFiftyTwo)
        levels.append(levelFiftyThree)
        levels.append(levelFiftyFour)
        levels.append(levelFiftyFive)
        levels.append(levelFiftySix)
        levels.append(levelFiftySeven)
        levels.append(levelFiftyEight)
        levels.append(levelFiftyNine)
        levels.append(levelSixty)
        levels.append(levelSixtyOne)
        levels.append(levelSixtyTwo)
        levels.append(levelSixtyThree)
        levels.append(levelSixtyFour)
        levels.append(levelSixtyFive)
        levels.append(levelSixtySix)
        levels.append(levelSixtySeven)
        levels.append(levelSixtyEight)
        levels.append(levelSixtyNine)
        levels.append(levelSeventy)
        levels.append(levelSeventyOne)
        levels.append(levelSeventyTwo)
        levels.append(levelSeventyThree)
        levels.append(levelSeventyFour)
        levels.append(levelSeventyFive)
        levels.append(levelSeventySix)
        levels.append(levelSeventySeven)
        levels.append(levelSeventyEight)
        levels.append(levelSeventyNine)
        levels.append(levelEighty)

        //currentLevel = 1000
        //currentLevel = 0;
        
        //updateNumbers()
    }
    
    func disableLevelsFrom(_ index:Int){
        for i in index ..< levels.count {
            levels[i].alpha = 0.5
            levels[i].tintColor = .white
            levels[i].isEnabled = false;
        }
    }
    
    func updateNumbers(){
        //for var i=0; i<20; i+=1
        
        for level in levels{
            level.alpha = 1

            level.isEnabled = true;
        }
        //var lev = student.currentLevel
        let defaults = UserDefaults.standard
        
        var lev = 0;
        
        if let levelNum = defaults.string(forKey: defaultsKeys.level) {
            
            lev = Int(levelNum)!
        }
        
        //var lev = currentLevel
        print(lev)
        
        //var lev = 0
        switch puzzle {
        case "add":
            if(lev >= 80){
                lev = 80
            }
            else {
                disableLevelsFrom(lev + 1)
            }
        case "subtract":
            if(lev < 80){
                disableLevelsFrom(0)
                return
            }else if (lev >= 160){
                lev = 160
            }
            else {
                lev = lev % 80
                disableLevelsFrom(lev+1)
            }
        case "multiply":
            if(lev < 160){
                disableLevelsFrom(0)
                return
            }else if (lev >= 240){
                lev = 240
            }
            else {
                lev = lev % 80
                disableLevelsFrom(lev+1)
            }
        case "divide":
            if(lev < 240){
                disableLevelsFrom(0)
                return
            }else if (lev >= 320){
                lev = 320
            }
            else {
                lev = lev % 80
                disableLevelsFrom(lev+1)
            }
        default:
            return
        }
//        if(puzzle == "Add"){
//            if(lev >= 20){
//                lev = 20
//            }
//            else {
//                disableLevelsFrom(lev+1);
//            }
//
//            //for var i = lev-1; i>=0; i-=1
//
//        }
//        else if(puzzle == "Sum"){
//            if(lev < 20){
//                disableLevelsFrom(0);
//                return;
//            }
//            else if(lev >= 40){
//                lev = 20;
//            } else {
//                lev = lev%20;
//                disableLevelsFrom(lev+1);
//            }
//
//        }
//        else if(puzzle == "Take Away"){
//            if(lev < 40){
//                disableLevelsFrom(0)
//                return;
//            }
//            else if(lev >= 60){
//                lev = 20;
//            }
//            else {
//                lev = lev%20;
//                disableLevelsFrom(lev+1);
//            }
//
//
//        }
//        else if(puzzle == "Subtract"){
//            if(lev < 60){
//                disableLevelsFrom(0)
//                return;
//            }
//            else if(lev >= 80){
//                lev = 20;
//            }
//            else {
//                lev = lev%20;
//                disableLevelsFrom(lev+1);
//            }
//
//
//        }
//        else if(puzzle == "Borrow"){
//            if(lev < 80){
//                disableLevelsFrom(0)
//                return;
//            }
//            else if(lev >= 100){
//                lev = 20;
//            }
//            else {
//                lev = lev%20;
//                disableLevelsFrom(lev+1);
//            }
//
//
//        }
//        else if(puzzle == "Difference"){
//            if(lev < 100){
//                disableLevelsFrom(0)
//                return;
//            }
//            else if(lev >= 120){
//                lev = 20;
//            }
//            else {
//                lev = lev%20;
//                disableLevelsFrom(lev+1);
//            }
//
//
//        }
//        else if(puzzle == "Carry"){
//            if(lev < 120){
//                disableLevelsFrom(0)
//                return;
//            }
//            else if(lev >= 140){
//                lev = 20;
//            }
//            else {
//                lev = lev%20;
//                disableLevelsFrom(lev+1);
//            }
//
//
//        }
//        else if(puzzle == "Multi"){
//            if(lev < 140){
//                disableLevelsFrom(0)
//                return;
//            }
//            else if(lev >= 160){
//                lev = 20;
//            }
//            else {
//                lev = lev%20;
//                disableLevelsFrom(lev+1);
//            }
//
//        }
//        else if(puzzle == "Plus"){
//            if(lev < 160){
//                disableLevelsFrom(0)
//                return;
//            }
//            else if(lev >= 180){
//                lev = 20;
//            }
//            else {
//                lev = lev%20;
//                disableLevelsFrom(lev+1);
//            }
//
//        }
//        else if(puzzle == "Product"){
//            if(lev < 160){
//                disableLevelsFrom(0)
//                return;
//            }
//            else if(lev >= 180){
//                lev = 20;
//            }
//            else {
//                lev = lev%20;
//                disableLevelsFrom(lev+1);
//            }
//
//        }
//        else if(puzzle == "Times"){
//            if(lev < 160){
//                disableLevelsFrom(0)
//                return;
//            }
//            else if(lev >= 180){
//                lev = 20;
//            }
//            else {
//                lev = lev%20;
//                disableLevelsFrom(lev+1);
//            }
//
//        }
//        else if(puzzle == "Cation"){
//            if(lev < 160){
//                disableLevelsFrom(0)
//                return;
//            }
//            else if(lev >= 180){
//                lev = 20;
//            }
//            else {
//                lev = lev%20;
//                disableLevelsFrom(lev+1);
//            }
//
//        }
//        else if(puzzle == "Divide"){
//            if(lev < 160){
//                disableLevelsFrom(0)
//                return;
//            }
//            else if(lev >= 180){
//                lev = 20;
//            }
//            else {
//                lev = lev%20;
//                disableLevelsFrom(lev+1);
//            }
//
//        }
//        else if(puzzle == "Remainder"){
//            if(lev < 160){
//                disableLevelsFrom(0)
//                return;
//            }
//            else if(lev >= 180){
//                lev = 20;
//            }
//            else {
//                lev = lev%20;
//                disableLevelsFrom(lev+1);
//            }
//
//        }
//        else if(puzzle == "Equivalent"){
//            if(lev < 160){
//                disableLevelsFrom(0)
//                return;
//            }
//            else if(lev >= 180){
//                lev = 20;
//            }
//            else {
//                lev = lev%20;
//                disableLevelsFrom(lev+1);
//            }
//
//        }
//        else if(puzzle == "Comparing"){
//            if(lev < 160){
//                disableLevelsFrom(0)
//                return;
//            }
//            else if(lev >= 180){
//                lev = 20;
//            }
//            else {
//                lev = lev%20;
//                disableLevelsFrom(lev+1);
//            }
//
//        }
//
        if (lev != 0){
            for i in 0...lev-1{
                levels[i].setBackgroundImage(UIImage(named: "completed_level_bg"), for: .normal)
                levels[i].tintColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        var segue = "";
        
        

        let superview = sender.superview?.superview
        
        print(superview)
        var index = -1
        switch superview {
        case level1View:
            index = 0;
        case level2View:
            index = 1
        case level3View:
            index = 2
        case level4View:
            index = 3
        default:
            index = -1
        }
        
        print("puzzle", puzzle)
        
        switch puzzle {
        case "add":
            segue = adds[index]
        case "subtract":
            segue = subs[index]
        case "multiply":
            segue = mult[index]
        case "divide":
            segue = div[index]
        default:
            segue = "error"
        }

        print(puzzle)
        print(segue);
        self.performSegue(withIdentifier: segue, sender: sender);
    }
    
    
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        //print("hi");
        self.navigationController?.popViewController(animated: true)
    }

    
    override func viewWillAppear(_ animated: Bool) {
        updateNumbers();
    }
    
    // MARK: - Navigation

    
    @IBAction func unwindToThisView(sender: UIStoryboardSegue) {
        if let vc = sender.source as? AddLevelViewController {
            currentLevel = vc.level
        }
    }
    
    
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
        
        let defaults = UserDefaults.standard
        if let levelNum = defaults.string(forKey: defaultsKeys.level) {
            destinationVC!.level = Int(levelNum)!
        }else{
            destinationVC!.level = 0
        }
        
        //destinationVC!.level = level;
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
