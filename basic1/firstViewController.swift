//
//  firstViewController.swift
//  basic1
//
//  Created by matsu on 2015/07/22.
//  Copyright (c) 2015年 swift_app. All rights reserved.
//

import UIKit

class firstViewController: UIViewController {
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    required override init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        self.title = "TOP"
        self.tabBarItem.title = "TOP"
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

        let nextButton: UIButton = UIButton(frame: CGRectMake(0,0,120,50))
        nextButton.backgroundColor = UIColor.redColor();
        nextButton.layer.masksToBounds = true
        nextButton.setTitle("Next", forState: .Normal)
        nextButton.layer.cornerRadius = 20.0
        nextButton.layer.position = CGPoint(x: self.view.bounds.width/2 , y:self.view.bounds.height-100)
        nextButton.addTarget(self, action: "nextPage:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(nextButton);
    }

    func nextPage(sender: UIButton){
        self.navigationController?.pushViewController(secondViewController(), animated: true)
    }
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        // 画面の表示の直前に呼ばれる
        
        let btn = CustomNavigationController().returnBtn
        btn?.hidden
    }
    
    override func didReceiveMemoryWarning() {
        // Dispose of any resources that can be recreated.
        super.didReceiveMemoryWarning()
    }
    
}
