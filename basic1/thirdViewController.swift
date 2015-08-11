//
//  ViewController.swift
//  basic1
//
//  Created by matsu on 2015/07/22.
//  Copyright (c) 2015年 swift_app. All rights reserved.
//

import UIKit

class thirdViewController: UIViewController {
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    required override init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.title = "3rd"
        self.tabBarItem.title = "3rd"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.blueColor()
        
        let nameLabel: UILabel = UILabel(frame: CGRectMake(0,0,200,50))
        nameLabel.shadowColor = UIColor.grayColor()
        nameLabel.text = "3rd"
        nameLabel.textColor = UIColor.redColor()
        nameLabel.textAlignment = NSTextAlignment.Center
        nameLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 300)
        self.view.addSubview(nameLabel);
        
    }
    
    override func didReceiveMemoryWarning() {
        // Dispose of any resources that can be recreated.
        super.didReceiveMemoryWarning()
    }

}

