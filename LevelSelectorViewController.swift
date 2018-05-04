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
        
        // Do any additional setup after loading the view.
        
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

        
    }
    
    func disableLevelsFrom(_ index:Int){
        for i in index ..< levels.count {
            levels[i].alpha = 0.5
            levels[i].tintColor = .white
            levels[i].isEnabled = false;
        }
    }
    
    func updateNumbers(){
        
        for level in levels{
            level.alpha = 1

            level.isEnabled = true;
            
            level.tintColor = #colorLiteral(red: 0.31761235, green: 0.317671299, blue: 0.3176046014, alpha: 1)
        }
        let defaults = UserDefaults.standard
        
        var lev = 0;
        
        if let levelNum = defaults.string(forKey: defaultsKeys.level) {
            
            lev = Int(levelNum)!
        }
        
        print(lev)
        
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
                lev = 80
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
                lev = 80
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
                lev = 80
            }
            else {
                lev = lev % 80
                disableLevelsFrom(lev+1)
            }
        default:
            return
        }

        if (lev != 0){
            for i in 0...lev-1{
                levels[i].setBackgroundImage(UIImage(named: "number_circle"), for: .normal)
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

        self.performSegue(withIdentifier: segue, sender: sender);
    }
    
    
    @IBAction func backButtonPressed(_ sender: AnyObject) {
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
        let destinationVC = segue.destination as? LevelViewController
        
        var level = currentLevel
        let defaults = UserDefaults.standard
        if let levelNum = defaults.string(forKey: defaultsKeys.level) {
            destinationVC!.level = Int(levelNum)!
            level = Int(levelNum)!
        }else{
            destinationVC!.level = 0
            level = 0
        }
        
        let lvl = Int((sender as! UIButton).titleLabel!.text!)! - 1;

        

        var greater = false
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
        case is CarryViewController:
            if(level>60){
                greater = true;
            }
        case is PlusViewController:
            if(level>80){
                greater = true;
            }
        case is SubtractLevelViewController:
            if(level>100){
                greater = true;
            }
        case is DifferenceViewController:
            if(level>120){
                greater = true;
            }
        case is TakeAwayViewController:
            if(level>140){
                greater = true;
            }
        case is BorrowViewController:
            if(level>160){
                greater = true;
            }
        case is MultiViewController:
            if(level>180){
                greater = true;
            }
            
        case is ProductViewController:
            if(level>200){
                greater = true;
            }
            
        case is TimesViewController:
            if(level>220){
                greater = true;
            }
            
        case is CationViewController:
            if(level>240){
                greater = true;
            }
            
        case is DivideViewController:
            if(level>260){
                greater = true;
            }
        case is RemainderViewController:
            if(level>280){
                greater = true;
            }
        case is EquivalentViewController:
            if(level>300){
                greater = true;
            }
        case is ComparingViewController:
            if(level>320){
                greater = true;
            }
        
        default:
            greater = false
        }
        
        if(lvl < level%20 || greater){
            destinationVC!.played = true;
        }
        
        destinationVC!.currLevel = lvl

    }
    

}
