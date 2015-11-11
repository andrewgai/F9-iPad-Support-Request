//
//  SecondViewController.swift
//  FoodTracker
//
//  Created by Andrew Gai on 9/24/15.
//  Copyright © 2015 Andrew Gai. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var backBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        
        //@IBOutlet var myGradientView: UIView!
        //let myGradientView: GradientView = GradientView()
        
        
        
        //let gradientLayer: CAGradientLayer = GradientView()
        
        
            
            
            
            // Handle the text field's user input through delegate callbacks.
            //nameTextField.delegate = self
            
            // Do any additional setup after loading the view, typically from a nib.
            //
            let topColor = UIColor( red: (0/255.0), green: (9/255.0), blue: (26/255.0), alpha: 1 )
            let bottomColor = UIColor( red: (0/255.0), green: (59/255.0), blue: (93/255.0), alpha: 1 )
            
            let gradientColors: [CGColor] = [topColor.CGColor, bottomColor.CGColor]
            let gradientLocations: [Float] = [0.0, 1.0]
            //
            //        //let gradientLayer: CAGradientLayer = CAGradientLayer()
            gradientLayer.colors = gradientColors
            gradientLayer.locations = gradientLocations
            //        
            gradientLayer.frame = self.view.bounds
            self.view.layer.insertSublayer(gradientLayer, atIndex: 0)
        
        
        let timer1 = NSTimer.scheduledTimerWithTimeInterval(05, target: self, selector: "enableButton", userInfo: nil, repeats: false)
        
        
    }
    
    func enableButton() {
        //print("timer over")
        backBtn.sendActionsForControlEvents(UIControlEvents.TouchUpInside)
        //        performSegueWithIdentifier("mainView", sender: self)
        
    }

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
