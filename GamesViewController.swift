//
//  GamesViewController.swift
//  Project Pythagoria
//
//  Created by Alex Lucas on 11/3/15.
//  Copyright © 2015 tbd. All rights reserved.
//

import UIKit
import CloudKit

class GamesViewController: UIViewController {

    
    var level:Int!
    var locally:Bool = false
    var puzzle = ""
    let adds = ["Add", "Sum", "Carry", "Plus"]
    let subs = ["Take Away", "Subtract", "Borrow", "Difference"]
    let mult = ["Multi", "Product", "Times", "Cation"]
    let div = ["Divide", "Remainder", "Equivalent", "Comparing"]
   // var student:Student = Student(name: "");
    
    override func viewWillAppear(animated: Bool) {
    //    print(level)
        locally = NSUserDefaults.standardUserDefaults().boolForKey("storeDataLocally")
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressed(sender: AnyObject) {
        print("levels segue?")
        self.performSegueWithIdentifier("showLevels", sender: sender)
        

    }
    
    @IBAction func backButtonPressed(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)

    }
    
  
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let destinationVC = segue.destinationViewController as? LevelSelectorViewController{
         //  print(student);
         //   destinationVC.student = student;
            let number = Int(((sender as! UIButton).titleLabel?.text)!)
            print(number!)
            print(destinationVC)
            var game = ""
            switch puzzle {
            case "+":
                game = adds[number!-1]
            case "–":
                game = subs[number!-1]
            case "×":
                game = mult[number!-1]
            case "÷":
                game = div[number!-1]
            default:
                game = ""
            }
            
            destinationVC.puzzle = game;
            destinationVC.currentLevel = level
        }

    }
    

}
