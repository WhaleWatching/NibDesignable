//
//  UICustomControl.swift
//  NibDesignableDemo
//
//  Created by EdwardCheng on 15/8/22.
//  Copyright (c) 2015年 Morten Bøgh. All rights reserved.
//

import UIKit

class UICustomControl: NibDesignableControl {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    func setup() {
        self.backgroundColor = UIColor.blueColor()
    }

}
