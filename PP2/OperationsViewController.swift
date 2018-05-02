
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
    @IBOutlet weak var tryButton: UIButton!
    @IBOutlet weak var offlineLabel: UILabel!
    @IBOutlet weak var icloudLabel: UILabel!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var levelSetter: UITextField!
    
    var level:Int!
    var locally:Bool = true
    var blurred = false
    var blurView:UIButton!
    
    var puzzle = ""

    
    var center:CGPoint!

    var smallButtons = [UIButton]()
    
    override func viewWillAppear(_ animated: Bool) {
        //    print(level)
       // locally = NSUserDefaults.standardUserDefaults().boolForKey("storeDataLocally")
        getLevel()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png")!)

        let launchedBefore = UserDefaults.standard.bool(forKey: "launchedBefore")
        if launchedBefore  {
            print("Not first launch.")
        }
        else {
            print("First launch, setting NSUserDefault.")
            self.performSegue(withIdentifier: "showWelcomePage", sender: self)
            UserDefaults.standard.set(true, forKey: "launchedBefore") ///this needs to be when the welcomeview willr esign 
            print("here?")
        }
        
        
        
        
        blurView = UIButton.init(frame: self.view.frame)
        if !UIAccessibilityIsReduceTransparencyEnabled() {
            blurView.backgroundColor = UIColor.clear
            
            let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.extraLight)
            let blurEffectView = UIVisualEffectView(effect: blurEffect)
            //always fill the view
            blurEffectView.frame = self.view.frame
            blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            blurEffectView.isUserInteractionEnabled = false
            
            blurView.addSubview(blurEffectView) //if you have more UIViews, use an insertSubview API to place it where needed
        }
        else {
            blurView.backgroundColor = self.view.backgroundColor
        }
        blurView.addTarget(self, action: #selector(blurButtonPressed), for: .touchUpInside)
        blurView.isHidden = true
        self.view.addSubview(blurView)

        

        // Do any additional setup after loading the view.
        offlineLabel.isHidden = true
        icloudLabel.isHidden = true
        tryButton.isHidden = true
    }
    
    override func viewDidLayoutSubviews() {
//        addButton.layer.cornerRadius = 0.5 * addButton.bounds.size.height
//        print(multiplyButton.frame)
//        print("why")
//        subtractButton.layer.cornerRadius = 0.5 * subtractButton.bounds.size.height
//        multiplyButton.layer.cornerRadius = 0.5 * multiplyButton.bounds.size.height
//        divideButton.layer.cornerRadius = 0.5 * divideButton.bounds.size.height

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func blurButtonPressed(_ sender: UIButton!){
        print("aksldjf")
        UIView.animate(withDuration: 0.5, animations: {
            self.blurView.alpha = 0
            
        })
        
        hideCircles()
        
        blurView.isUserInteractionEnabled = false
        
        blurred = !blurred

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

//        if(blurred){
//            //blurView.hidden = true
//            UIView.animate(withDuration: 0.5, animations: {
//                self.blurView.alpha = 0
//
//            })
//
//            hideCircles()
//           //r blurView.hidden = true
//
//        }
//        else {
//            self.view.bringSubview(toFront: blurView)
//
////            puzzle = (sender as! UIButton).titleLabel!.text!
//
//            blurView.alpha = 0
//            blurView.isHidden = false
//            UIView.animate(withDuration: 0.5, animations: {
//                self.blurView.alpha = 1
//            })
//            blurView.isUserInteractionEnabled = true
////            let beginning = sender.center
////            print(beginning)
////
////            let cx = beginning.x
////            let cy = beginning.y
////            let a = CGFloat(110 * sqrt(3.0))
////
////            let end1 = CGPointMake(cx + 220, cy)
////            let end2 = CGPointMake(cx + a, cy + 110)
////            let end3 = CGPointMake(cx + 110, cy + a)
////            let end4 = CGPointMake(cx, cy + 220)
////            drawLine(beginning, to: end1)
////            drawLine(beginning, to: end2)
////            drawLine(beginning, to: end3)
////            drawLine(beginning, to: end4)
//
////            let centers = [end1,end2,end3,end4]
////
////
////            for center in centers {
////                let blah = UIView(frame: CGRect(x: center.x - 30, y: center.y - 30, width: 60, height: 60))
////                blah.backgroundColor = UIColor.redColor()
////                blah.layer.cornerRadius = 30
////
////                self.view.addSubview(blah)
////            }
//        //    let line = Line()
//            moveCirclesOut(sender as! UIButton)
//            self.view.bringSubview(toFront: sender as! UIView)
//
//       //     self.view.addSubview(line)
//         //   self.view.bringSubviewToFront(line)
//
//            //blurView.line = true
//            blurView.setNeedsDisplay()
//
//        }
//
//    //    self.view.bringSubviewToFront(addButton)
//        blurred = !blurred
    }
    
    
    
    func getLevel() {
        
        if(locally){
            //TODO this is where the level is being set ///
            
            print("get data from sudefaults")
            //level = 1000
            level = 0
            
            let defaults = UserDefaults.standard
            if let levelNum = defaults.string(forKey: defaultsKeys.level) {
                level = Int(levelNum)
            }else{
                level = 0
            }
            
            self.activityIndicator.stopAnimating()

        }
        else {
            let container = CKContainer.default()
            let privateDatabase = container.privateCloudDatabase
            let predicate = NSPredicate(value: true)
            
            let query = CKQuery(recordType: "UserInfo", predicate: predicate)
            
            privateDatabase.perform(query, inZoneWith: nil) { (results, error) -> Void in
                if error != nil {
                    let description = (error?.localizedDescription)! as String
                    print(description)
                    self.tryButton.isHidden = false
                    if description == "The Internet connection appears to be offline." {
                        self.offlineLabel.isHidden = false
                    }
                    else if description == "This request requires an authenticated account" {
                        self.icloudLabel.isHidden = false;
                    }
                    print(error?.localizedDescription)
                    print(error)
                }
                else {
                    
                    for result in results! {
                        if result.recordID.recordName == "moo"{
                            print("set")
                            
                            self.level = result.object(forKey: "level") as! Int
                            
                        }
                    }
                    OperationQueue.main.addOperation({ () -> Void in
                        self.activityIndicator.stopAnimating()
                        self.levelSetter.text = String(self.level)
                        
                    })
                    
                }
            }
        }
        
    }

    func moveCirclesOut(_ button: UIButton){
        var beginning:CGPoint!
        var end1:CGPoint!
        var end2:CGPoint!
        var end3:CGPoint!
        var end4:CGPoint!

        var cx: CGFloat!
        var cy: CGFloat!
        let a = CGFloat(110 * sqrt(3.0))
        
        let s = button.titleLabel?.text
        switch s {
        case "+"?:
            beginning = addButton.center
            cx = beginning.x
            cy = beginning.y

            end1 = CGPoint(x: cx + 220, y: cy)
            end2 = CGPoint(x: cx + a, y: cy + 110)
            end3 = CGPoint(x: cx + 110, y: cy + a)
            end4 = CGPoint(x: cx, y: cy + 220)

            
        case "–"?:
            beginning = subtractButton.center
            cx = beginning.x
            cy = beginning.y

            end1 = CGPoint(x: cx - 220, y: cy)
            end2 = CGPoint(x: cx - a, y: cy + 110)
            end3 = CGPoint(x: cx - 110, y: cy + a)
            end4 = CGPoint(x: cx, y: cy + 220)

        case "×"?:
            beginning = multiplyButton.center
            cx = beginning.x
            cy = beginning.y
            
            end1 = CGPoint(x: cx, y: cy - 220)
            end2 = CGPoint(x: cx + 110, y: cy - a)
            end3 = CGPoint(x: cx + a, y: cy - 110)
            end4 = CGPoint(x: cx + 220, y: cy)
            
        case "÷"?:
            beginning = divideButton.center
            cx = beginning.x
            cy = beginning.y
            
            end1 = CGPoint(x: cx, y: cy - 220)
            end2 = CGPoint(x: cx - 110, y: cy - a)
            end3 = CGPoint(x: cx - a, y: cy - 110)
            end4 = CGPoint(x: cx - 220, y: cy)

        default:
            break
        }
        
        let centers = [end1,end2,end3,end4]
        
        center = beginning
        var i = 1
        
        for center in centers {
            
            let blah = UIButton(frame: CGRect(x: beginning.x - 40, y: beginning.y - 40, width: 80, height: 80))
            blah.backgroundColor = UIColor.red
            blah.layer.cornerRadius = 40
            blah.setTitle(String(i), for: UIControlState())
            print(blah.titleLabel!.frame)
            blah.addTarget(self, action: #selector(nextLevel), for: .touchUpInside)
            
            smallButtons.append(blah)
            self.view.addSubview(blah)
            blah.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            UIView.animate(withDuration: 0.7, delay: 0.1, options: [], animations: {
                blah.center.x = (center?.x)!
                blah.center.y = (center?.y)!
                blah.transform = CGAffineTransform(scaleX: 1.5, y: 1.0)
//
//                blah.frame = CGRectMake(center.x - 40, center.y - 40, 80, 80)
//                blah.layer.cornerRadius = 40
            }, completion: nil)

            i += 1
            print(blah.frame)

        }

        
        
    }
    
    func hideCircles(){

        for blah in smallButtons {
            
            UIView.animate(withDuration: 0.7, animations: {
                blah.center.x = self.center.x
                blah.center.y = self.center.y
                blah.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
                }, completion:  { finished in
                    blah.removeFromSuperview()
                })

        }
    }
    
    func nextLevel(_ sender: UIButton!) {
        self.performSegue(withIdentifier: "showLevels", sender: sender)
    }

//    func drawLine(from: CGPoint, to: CGPoint){
//        let path: UIBezierPath = UIBezierPath()
//        path.moveToPoint(from)
//        path.addLineToPoint(to)
//        
//        let pathLayer: CAShapeLayer = CAShapeLayer()
//        pathLayer.frame = self.view.bounds
//        pathLayer.path = path.CGPath
//        pathLayer.strokeColor = UIColor.redColor().CGColor
//        pathLayer.fillColor = nil
//        pathLayer.lineWidth = 2.0
//        pathLayer.lineJoin = kCALineJoinBevel
//        
//        self.view.layer.addSublayer(pathLayer)
//        layers.append(pathLayer)
//
//        let pathAnimation: CABasicAnimation = CABasicAnimation(keyPath: "strokeEnd")
//        pathAnimation.duration = 0.5
//        pathAnimation.fromValue = NSNumber(float: 0.0)
//        pathAnimation.toValue = NSNumber(float: 1.0)
//
//        pathLayer.addAnimation(pathAnimation, forKey: "strokeEnd")
//
//    }
//
   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationVC = segue.destination as? LevelSelectorViewController{
            //  print(student);
            //   destinationVC.student = student;
//            let number = Int(((sender as! UIButton).titleLabel?.text)!)
            print(destinationVC)
            var game = ""
            switch puzzle {
            case "add":
//                game = adds[0]
//                game = adds[number!-1]
                destinationVC.view.backgroundColor = UIColor(patternImage: UIImage(named: "add_bg.png")!)

            case "subtract":
                destinationVC.view.backgroundColor = UIColor(patternImage: UIImage(named: "minus_bg.png")!)

//                game = subs[0]
            case "multiply":
                destinationVC.view.backgroundColor = UIColor(patternImage: UIImage(named: "times_bg.png")!)

//                game = mult[0]
            case "divide":
                destinationVC.view.backgroundColor = UIColor(patternImage: UIImage(named: "divide_bg.png")!)

//                game = div[0]
            default:
                game = ""
            }
            print(game)
            print(level)
            destinationVC.puzzle = puzzle;
            destinationVC.currentLevel = level
        }
        
        }

    @IBAction func setLevelPressed(_ sender: Any) {
        
        let defaults = UserDefaults.standard
        defaults.set(levelSetter.text, forKey: defaultsKeys.level)
    }
}
    


