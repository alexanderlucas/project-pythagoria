
//
//  OperationsViewController.swift
//  PP2
//
//  Created by Alex Lucas on 5/26/16.
//  Copyright © 2016 tbd. All rights reserved.
//

import UIKit
import CloudKit

class OperationsViewController: UIViewController {

    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var subtractButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    @IBOutlet weak var levelSetter: UITextField!
    
    var level:Int!
    var locally:Bool = true
    var blurred = false
    var blurView:UIButton!
    
    var puzzle = ""

    
    var center:CGPoint!

    var smallButtons = [UIButton]()
    
    override func viewWillAppear(_ animated: Bool) {
        getLevel()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!)

        let launchedBefore = UserDefaults.standard.bool(forKey: "launchedBefore")
        if launchedBefore  {
            print("Not first launch.")
        }
//        else {
//            print("First launch, setting NSUserDefault.")
//            self.performSegue(withIdentifier: "showWelcomePage", sender: self)
//            UserDefaults.standard.set(true, forKey: "launchedBefore") ///this needs to be when the welcomeview willr esign
//            print("here?")
//        }
        
        
        

    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        switch sender {
        case addButton:
            puzzle = "add"
        case subtractButton:
            puzzle = "subtract"
        case multiplyButton:
            puzzle = "multiply"
        case divideButton:
            puzzle = "divide"
        default:
            puzzle = ""
        }
        self.performSegue(withIdentifier: "showLevels", sender: sender)

    }
    
    
    
    func getLevel() {
        
        
            //level = 1000
            level = 0
            
            let defaults = UserDefaults.standard
            if let levelNum = defaults.string(forKey: defaultsKeys.level) {
                level = Int(levelNum)
            }else{
                level = 0
            }
            

        
        
    }

    
    func nextLevel(_ sender: UIButton!) {
        self.performSegue(withIdentifier: "showLevels", sender: sender)
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? LevelSelectorViewController{
            switch puzzle {
            case "add":
                destinationVC.view.backgroundColor = UIColor(patternImage: UIImage(named: "add_bg.png")!)

            case "subtract":
                destinationVC.view.backgroundColor = UIColor(patternImage: UIImage(named: "minus_bg.png")!)

            case "multiply":
                destinationVC.view.backgroundColor = UIColor(patternImage: UIImage(named: "times_bg.png")!)

            case "divide":
                destinationVC.view.backgroundColor = UIColor(patternImage: UIImage(named: "divide_bg.png")!)

            default:
                return
            }
            destinationVC.puzzle = puzzle;
            destinationVC.currentLevel = level
        }
        
        }

    @IBAction func setLevelPressed(_ sender: Any) {
        
        let defaults = UserDefaults.standard
        defaults.set(levelSetter.text, forKey: defaultsKeys.level)
    }
}
    


