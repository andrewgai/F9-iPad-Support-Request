//
//  ViewController.swift
//  FoodTracker
//
//  Created by Andrew Gai on 9/21/15.
//  Copyright © 2015 Andrew Gai. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    // MARK: Properties
    //@IBOutlet weak var nameTextField: UITextField!
    //@IBOutlet weak var mealNameLabel: UILabel!
    @IBOutlet weak var requestSupportBtn: UIButton!
    @IBOutlet weak var BGLogo: UIImageView!

    //@IBOutlet weak var myGradientView: GradientView!


    //@IBOutlet var myGradientView: GradientView!

    
    
    let gradientLayer: CAGradientLayer = CAGradientLayer()
    
    //@IBOutlet var myGradientView: UIView!
    //let myGradientView: GradientView = GradientView()
    
   
    
    //let gradientLayer: CAGradientLayer = GradientView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        
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
//        
//        
//        
//        let btnTopColor = UIColor( red: (206/255.0), green: (223/255.0), blue: (151/255.0), alpha: 1 )
//        let btnBottomColor = UIColor( red: (147/255.0), green: (175/255.0), blue: (67/255.0), alpha: 1 )
//        
//        let btnGradientColors: [CGColor] = [btnTopColor.CGColor, btnBottomColor.CGColor]
//        
//        
//        let btnLayer: CAGradientLayer = CAGradientLayer()
//        btnLayer.colors = btnGradientColors
//        btnLayer.locations = gradientLocations
//        btnLayer.frame = requestSupportBtn.bounds
//        
//        requestSupportBtn.layer.insertSublayer(btnLayer, atIndex:0)
//        requestSupportBtn.clipsToBounds = true
        BGLogo.alpha = 0.05
    }
    
//    var myGradientView: GradientView/
    
    @IBOutlet weak var supportBtn: UIButton!
    
    @IBAction func triggerEmail(sender: UIButton) {
       
        // send email
        var mail = SKPSMTPMessage()
        mail.fromEmail = "five9.aspen@five9.com"
        mail.toEmail = "meetingrm_itsup@five9.com"
        mail.requiresAuth = false
        mail.subject = "Aspen Needs Help!"
        mail.wantsSecure = false
        mail.relayHost = "relay.scl.five9.com"
        
        
        mail.relayPorts = [25] // 587
        
        var parts: NSDictionary = [
            "kSKPSMTPPartContentTypeKey": "text/plain; charset=UTF-8",
            "kSKPSMTPPartMessageKey": "Relay message",
        ]
        
        mail.parts = [parts]
        
        mail.send()
        
        
        
    }
    
    
    
    
    override func viewDidLayoutSubviews() {
        //weak var myGradientView: GradientView!
        //self.myGradientView.gradientWithColors(UIColor( red: (206/255.0), green: (223/255.0), blue: (151/255.0), alpha: 1 ), UIColor( red: (206/255.0), green: (223/255.0), blue: (151/255.0), alpha: 1 ))
        //self.myGradientView.gradientWithColors(UIColor.blueColor(), UIColor.whiteColor())
        //requestSupportBtn.myGradientView.gradientWithColors(UIColor.blueColor(), UIColor.whiteColor())

    }
  
  
    
    // MARK: UITextFieldDelegate
//    func textFieldShouldReturn(textField: UITextField) -> Bool {
//        // Hide the keyboard.
//        textField.resignFirstResponder()
//        return true
//    }
//    func textFieldDidEndEditing(textField: UITextField) {
//        mealNameLabel.text = textField.text
//    }
    
    
    // MARK: Actions
//    @IBAction func setDefaultLabelText(sender: UIButton) {
//        mealNameLabel.text = "Default Text"
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    

}

