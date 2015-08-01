//
//  firstViewController.swift
//  basic1
//
//  Created by matsu on 2015/07/22.
//  Copyright (c) 2015年 swift_app. All rights reserved.
//

import UIKit

class firstViewController: UIViewController {

    override init() {
        super.init(nibName: nil, bundle: nil)
        self.title = "TOP"
        self.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Featured, tag: 1)
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    required override init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        let nameLabel: UILabel = UILabel(frame: CGRectMake(0,0,200,50))
        nameLabel.shadowColor = UIColor.grayColor()
        nameLabel.text = "TOP"
        nameLabel.textColor = UIColor.redColor()
        nameLabel.textAlignment = NSTextAlignment.Center
        nameLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 300)
        self.view.addSubview(nameLabel);
 
    }
    
    func onClickNextButton(sender: UIButton){
        let mySecondViewController: UIViewController = secondViewController()
        // animation
        mySecondViewController.modalTransitionStyle = UIModalTransitionStyle.PartialCurl
        self.presentViewController(mySecondViewController, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        // Dispose of any resources that can be recreated.
        super.didReceiveMemoryWarning()
    }
    
}
