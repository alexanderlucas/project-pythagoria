//
//  ViewController1.swift
//  PP2
//
//  Created by Alex Lucas on 6/10/16.
//  Copyright © 2016 tbd. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var playButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
     //   let parent = self.parentViewController as! WelcomeViewController
        //parent.scrollView.scrollEnabled = false
    //parent.dumpFirstView()
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func controlSelected(sender: AnyObject) {
        if(segmentedControl.selectedSegmentIndex == 0){
            let parent = self.parentViewController as! WelcomeViewController
            parent.scrollView.scrollEnabled = true
            let x = parent.scrollView.frame.width
            parent.scrollView.setContentOffset(CGPointMake(x, 0), animated: true)
            playButton.hidden = true


        }
        else {
            playButton.hidden = false
        }
       
    }
    @IBAction func playButtonPressed(sender: AnyObject) {
        let parent = self.parentViewController as! WelcomeViewController
        parent.dismissViewControllerAnimated(true, completion: nil)
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
