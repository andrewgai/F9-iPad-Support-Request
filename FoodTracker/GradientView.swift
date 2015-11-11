//
//  GradientView.swift
//  FoodTracker
//
//  Created by Andrew Gai on 9/22/15.
//  Copyright © 2015 Andrew Gai. All rights reserved.
//

import UIKit

class GradientView: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

    override class func layerClass() -> AnyClass {
        return CAGradientLayer.self
    }
        
    func gradientWithColors(firstColor : UIColor, _ secondColor : UIColor) {
            
        let deviceScale = UIScreen.mainScreen().scale
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = CGRectMake(0.0, 0.0, self.frame.size.width * deviceScale, self.frame.size.height * deviceScale)
        gradientLayer.colors = [ firstColor.CGColor, secondColor.CGColor ]
            
        self.layer.insertSublayer(gradientLayer, atIndex: 0)
    }
    

}
