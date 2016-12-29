//
//  WelcomeViewController.swift
//  PP2
//
//  Created by Alex Lucas on 6/10/16.
//  Copyright © 2016 tbd. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, UIScrollViewDelegate {

    var subs = [UIViewController]()
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        scrollView.delegate = self

        subs.append(self.storyboard!.instantiateViewControllerWithIdentifier("WelcomeViewController"))
        subs.append(self.storyboard!.instantiateViewControllerWithIdentifier("ViewController1"))
        subs.append(self.storyboard!.instantiateViewControllerWithIdentifier("ViewController2"))

        print("loaded")
        
    }
    
    override func viewDidLayoutSubviews() {
        print("initting")
        initScrollViews()
        print("did it")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        if(scrollView.contentOffset.x >= scrollView.frame.size.width && subs.count == 3){
            dumpFirstView()
            scrollView.setContentOffset(CGPointMake(0, 0), animated: false)
            scrollView.scrollEnabled = false;

        }
//        if(scrollView.contentOffset.x < scrollView.frame.size.width*2){
//            scrollView.setContentOffset(CGPointMake(scrollView.frame.size.width, 0), animated: false)
//            dumpSecondView()
//        }

    }
    
    func initScrollViews() {
        let num = subs.count
        scrollView.contentSize = CGSize(width: CGFloat(num) * scrollView.frame.width, height: scrollView.frame.height)

        var index = 0
        for vc in subs {
            vc.willMoveToParentViewController(self)
            vc.view.frame.size = scrollView.frame.size
            vc.view.frame.origin = CGPointMake(view.frame.width * CGFloat(index), 0)
            scrollView.addSubview(vc.view)
            self.addChildViewController(vc)
            vc.didMoveToParentViewController(self)
            
            index += 1
        }
//        let welcome = self.storyboard!.instantiateViewControllerWithIdentifier("WelcomeViewController")
//        let vc1 = self.storyboard!.instantiateViewControllerWithIdentifier("ViewController1")
//        let vc2 = self.storyboard!.instantiateViewControllerWithIdentifier("ViewController2")
//        print("got em")
//        welcome.willMoveToParentViewController(self)
//        vc1.willMoveToParentViewController(self)
//        vc2.willMoveToParentViewController(self)
//        
//        print("gonna do it")
//        
//        welcome.view.frame = scrollView.bounds
//        vc1.view.frame.size = scrollView.frame.size
//
//        vc1.view.frame.origin = CGPoint(x: view.frame.width, y: 0)
//
//        vc2.view.frame.size = scrollView.frame.size
//
//        vc2.view.frame.origin = CGPoint(x: view.frame.width * 2, y: 0)
//
//        scrollView.addSubview(vc2.view)
//        self.addChildViewController(vc2)
//        vc2.didMoveToParentViewController(self)
//        
//        scrollView.addSubview(vc1.view)
//        self.addChildViewController(vc1)
//        vc1.didMoveToParentViewController(self)
//        
//        scrollView.addSubview(welcome.view)
//        self.addChildViewController(welcome)
//        welcome.didMoveToParentViewController(self)
//        
//        
        
    }
    
    func dumpFirstView() {
        //dump vc0 if it's there
        //else, dump vc1
        for vc in subs {
            if(vc is ViewController0){
                subs.removeAtIndex(subs.indexOf(vc)!)
                initScrollViews()
                break;
            }
//            else if(vc is ViewController1 && subs.count == 2){
//                subs.removeAtIndex(subs.indexOf(vc)!)
//                initScrollViews()
//                
//            }
        }
        
//        scrollView.contentSize = CGSize(width: 2 * scrollView.frame.width, height: scrollView.frame.height)
//
//        let subviews = scrollView.subviews
//
//        for subview in subviews {
//
//            if(subview.frame.origin.x == 0){
//                subview.removeFromSuperview()
//                print("asasas")
//            }
//            else if(subview.frame.origin.x == view.frame.width){
//                subview.frame.origin = CGPoint(x: 0, y: 0)
//                print("ddddd")
//
//            }
//            else if(subview.frame.origin.x == view.frame.width * 2){
//                subview.frame.origin = CGPoint(x: view.frame.width, y: 0)
//                print("asfffffasas")
//
//            }
//        }
        
    }

    func dumpSecondView() {
        for vc in subs {
            if(vc is ViewController1){
                subs.removeAtIndex(subs.indexOf(vc)!)
                initScrollViews()
            }
            else if(vc is ViewController2 && subs.count == 2){
                subs.removeAtIndex(subs.indexOf(vc)!)
                initScrollViews()
            }
        }
        
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
