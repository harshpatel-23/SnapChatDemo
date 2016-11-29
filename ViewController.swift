//
//  ViewController.swift
//  SnapChatDemo
//
//  Created by harsh patel on 18/05/16.
//  Copyright © 2016 harsh patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //initialize viewController1
        
        let vc1 = ViewController1(nibName: "ViewController1", bundle:nil)
        self.addChildViewController(vc1)
        self.scrollView.addSubview(vc1.view)
        vc1.didMoveToParentViewController(self)
        
        //initialize viewController2
        let vc2 = ViewController1(nibName: "ViewController2", bundle:nil)
        var frame1 = vc2.view.frame
        frame1.origin.x = self.view.frame.size.width
        vc2.view.frame = frame1
        
        self.addChildViewController(vc2)
        self.scrollView.addSubview(vc2.view)
        vc2.didMoveToParentViewController(self)
        
        //initialize viewController3
        let vc3 = ViewController1(nibName: "ViewController3", bundle:nil)
        var frame2 = vc3.view.frame
        frame2.origin.x = self.view.frame.size.width * 2
        vc3.view.frame = frame1
        
        self.addChildViewController(vc3)
        self.scrollView.addSubview(vc3.view)
        vc3.didMoveToParentViewController(self)
        
        self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width * 3, self.view.frame.size.height)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

