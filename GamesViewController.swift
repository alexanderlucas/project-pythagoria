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
    
    override func viewWillAppear(_ animated: Bool) {
    //    print(level)
        locally = UserDefaults.standard.bool(forKey: "storeDataLocally")
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressed(_ sender: AnyObject) {
        print("levels segue?")
        self.performSegue(withIdentifier: "showLevels", sender: sender)
        

    }
    
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        self.navigationController?.popViewController(animated: true)

    }
    
  
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let destinationVC = segue.destination as? LevelSelectorViewController{
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
