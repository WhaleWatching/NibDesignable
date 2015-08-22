//
//  ULineMenuButton.swift
//  ULine
//
//  Created by EdwardCheng on 15/8/21.
//  Copyright (c) 2015年 ULine. All rights reserved.
//

import UIKit

public class ULineMenuButton: NibDesignable {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    
    @IBInspectable public var text: String = "Button" {
        didSet {
            self.textLabel.text = text
        }
    }
    
    @IBInspectable public var iconImage: UIImage = UIImage() {
        didSet {
            self.iconImageView.image = iconImage
        }
    }
    
    public override func prepareForInterfaceBuilder() {
        
        if count(self.text) == 0 {
            self.text = "Button"
        }
        
        if self.iconImage.size == CGSizeZero {
            let bundle = NSBundle(forClass: self.dynamicType)
            self.iconImage = UIImage(named: "Donkey", inBundle: bundle, compatibleWithTraitCollection: nil)!
        }
        
    }

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
