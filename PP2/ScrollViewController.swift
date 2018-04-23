//
//  ScrollViewController.swift
//  PP2
//
//  Created by Alex Lucas on 2/26/16.
//  Copyright © 2016 tbd. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
//    var lsv = LevelSelectorView.init(frame: CGRectMake(0, 0, 768, 1024))
//    var lsv2 = LevelSelectorView.init(frame: CGRectMake(0, 1024, 768, 1024))

    var gsv = GameSelectorView(frame: CGRect(x: 0,y: 0,width: 786,height: 1024), games: 3)
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        scrollView.delegate = self
        scrollView.contentSize.height = 4096
//        scrollView.addSubview(lsv)
//        scrollView.addSubview(lsv2)
        scrollView.addSubview(gsv)
//        print(lsv.view.subviews)
//        scrollView.addSubview(lsv.view)
//        var frame = lsv.view.frame;
//        frame.origin.x = 600;
//        lsv.view.frame = frame;

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        print("oye")
//        let scrollPoint = CGPointMake(0.0, 0.0)
//        scrollView.setContentOffset(scrollPoint, animated: true)

    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        print("hi")
        let y = targetContentOffset.pointee.y
        if y < 200 {
            targetContentOffset.pointee.y = 0
        }
        else if y>824 && y<1224 {
            targetContentOffset.pointee.y = 1024
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
