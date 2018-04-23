//
//  GamesViewController.swift
//  Project Pythagoria
//
//  Created by Alex Lucas on 11/3/15.
//  Copyright © 2015 tbd. All rights reserved.
//

import UIKit

class GamesViewController: UIViewController {

    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var sumButton: UIButton!
    @IBOutlet weak var takeAwayButton: UIButton!
    @IBOutlet weak var differenceButton: UIButton!
    
    var student:Student = Student(name: "");
    
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
        self.navigationController?.popViewControllerAnimated(true);
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let destinationVC = segue.destinationViewController as? LevelsViewController{
            print(student);
            destinationVC.student = student;
            destinationVC.puzzle = ((sender as! UIButton).titleLabel?.text)!;
        }

    }
    

}
