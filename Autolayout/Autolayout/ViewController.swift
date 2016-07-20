//
//  ViewController.swift
//  Autolayout
//
//  Created by akww on 16/7/19.
//  Copyright © 2016年 haveAHome. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var middleViewTopSpaceLayoutConstant: CGFloat!
    var middleViewOriginY: CGFloat!
    
    
    @IBOutlet weak var middleViewTopSpaceLayout: NSLayoutConstraint!
    
    @IBOutlet var panGesture: UIPanGestureRecognizer!
    
    @IBOutlet weak var middleView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        panGesture.addTarget(self, action: #selector(ViewController.pan))
        middleViewTopSpaceLayoutConstant = middleViewTopSpaceLayout.constant
        middleViewOriginY = middleView.frame.origin.y
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillLayoutSubviews() {
        
    }
    
    func pan() {
        if panGesture.state == UIGestureRecognizerState.Ended {
            UIView.animateWithDuration(0.4, delay: 0, options: UIViewAnimationOptions.CurveEaseIn, animations: { 
                self.middleView.frame.origin.y = self.middleViewOriginY
                }, completion: { (success) in
                    if success {
                        self.middleViewTopSpaceLayout.constant = self.middleViewTopSpaceLayoutConstant
                    }
            })
            return
        }
        let y = panGesture.translationInView(self.view).y
        middleViewTopSpaceLayout.constant = middleViewTopSpaceLayoutConstant + y
        
    }
    


}

