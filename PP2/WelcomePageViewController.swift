//
//  WelcomePageViewController.swift
//  PP2
//
//  Created by Alex Lucas on 6/9/16.
//  Copyright © 2016 tbd. All rights reserved.
//

import UIKit

class WelcomePageViewController: UIPageViewController {

    let array = [UIViewController]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       
        dataSource = self
        

        if let firstViewController = orderedViewControllers.first {
            setViewControllers([firstViewController],
                               direction: .forward,
                               animated: false,
                               completion: nil)
        }

        print(orderedViewControllers)
        
    }

    fileprivate(set) lazy var orderedViewControllers: [UIViewController] = {
        return [self.storyboard!.instantiateViewController(withIdentifier: "WelcomeViewController"),
                self.storyboard!.instantiateViewController(withIdentifier: "ViewController2"),
                self.storyboard!.instantiateViewController(withIdentifier: "ViewController3")]
    }()

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
extension WelcomePageViewController: UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerBefore viewController: UIViewController) -> UIViewController? {
        print("backwards")
        guard let viewControllerIndex = orderedViewControllers.index(of: viewController) else {
            print("A")
            
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0 else {
            print("B")
            
            return nil
        }
        
        guard orderedViewControllers.count > previousIndex else {
            print("C")
            return nil
        }
        
        return orderedViewControllers[previousIndex]
    }
    
    
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        print("forwards")
        guard let viewControllerIndex = orderedViewControllers.index(of: viewController) else {
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        let orderedViewControllersCount = orderedViewControllers.count
        
        guard orderedViewControllersCount != nextIndex else {
            return nil
        }
        
        guard orderedViewControllersCount > nextIndex else {
            return nil
        }
        
        return orderedViewControllers[nextIndex]
    }
    
}
