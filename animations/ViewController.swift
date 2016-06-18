//
//  ViewController.swift
//  animations
//
//  Created by Kaylan Smith on 6/17/16.
//  Copyright © 2016 Kaylan Smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    
    var counter = 1
    
    var isAnimating = true

    @IBOutlet var dogImage: UIImageView!
    
    
    // manual animation with button click
    @IBAction func updateImage(sender: AnyObject) {
    
        if isAnimating == true {
            
            timer.invalidate()
            
            isAnimating = false
            
        } else {
            
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: "doAnimation", userInfo: nil, repeats: true)
            
            isAnimating = true
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // stop motion animation
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: "doAnimation", userInfo: nil, repeats: true)
        
    }
    
    func doAnimation() {
        
        if counter == 4 {
            
            counter = 1
            
        } else {
            
            counter += 1
            
        }
        
        dogImage.image = UIImage(named: "basset20-\(counter).png")
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // object have been created, but not yet on the screen
    // bring in animation, starts hidden off the screen
    override func viewDidLayoutSubviews() {
        
        // gets coordinates
//        dogImage.center = CGPointMake(dogImage.center.x - 400, dogImage.center.y)
        
        // changing size
//        dogImage.frame = CGRectMake(100, 20, 0, 0)
        
    }
    
    // called the moment a user is able to see the screen
    override func viewDidAppear(animated: Bool) {
    
        UIView.animateWithDuration(1, animations: { () -> Void in
            
//            self.dogImage.center = CGPointMake(self.dogImage.center.x + 400, self.dogImage.center.y)
            
//            self.dogImage.frame = CGRectMake(100, 20, 100, 200)
            
            
        })
        
    }
    
    // others: use alpha to fade


}

