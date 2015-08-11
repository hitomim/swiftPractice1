//
//  CustomNavigationController.swift
//  basic1
//
//  Created by matsu on 2015/08/10.
//  Copyright (c) 2015年 swift_app. All rights reserved.
//

import UIKit

class CustomNavigationController: UINavigationController,UINavigationControllerDelegate {
    let customNavigationBar = UIImageView(image: UIImage(named: "navi.png"))
    var returnBtn:UIButton?
    override func viewDidLoad() {
        super.viewDidLoad()

        customNavigationBar.contentMode = UIViewContentMode.ScaleAspectFill
        customNavigationBar.frame = CGRectMake(0, 0, UIScreen.mainScreen().bounds.width, 100)
        customNavigationBar.userInteractionEnabled = true
        self.view.addSubview(customNavigationBar)
        
        returnBtn = UIButton()
        returnBtn?.addTarget(self, action: "returnScreen:", forControlEvents: UIControlEvents.TouchUpInside)
        returnBtn?.setImage(UIImage(named: "back.png"), forState: UIControlState.Normal)
        returnBtn?.frame = CGRectMake(CGRectGetMaxX(self.view.frame)-70, 30, 65, 45)
        customNavigationBar.addSubview(returnBtn!)
        
        self.delegate = self;
    }

    func returnScreen(sender:UIButton){
        self.popViewControllerAnimated(true)
    }
    
    func navigationController(navigationController: UINavigationController, willShowViewController viewController: UIViewController, animated: Bool) {
        if(self.childViewControllers.count <= 1){
            returnBtn?.alpha = 0
        }else{
            returnBtn?.alpha = 1
        }
        
    }
}
