//
//  ViewController.swift
//  animations
//
//  Created by Kaylan Smith on 6/17/16.
//  Copyright © 2016 Kaylan Smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 1

    @IBOutlet var dogImage: UIImageView!
    
    @IBAction func updateImage(sender: AnyObject) {
        
        if counter == 4 {
            
            counter = 1
            
        } else {
        
            counter++
            
        }
        
        dogImage.image = UIImage(named: "basset20-\(counter).png")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

