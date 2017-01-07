//
//  ViewController.swift
//  Swipes&Shakes
//
//  Created by Nick Natali on 12/30/16.
//  Copyright © 2016 Make It Appen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swiped(gesture:)))
        
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(swipeRight)
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.swiped(gesture: )))
        
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(swipeLeft)
        
        
    }
    
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if event?.subtype == UIEventSubtype.motionShake {
            print("device was shaken")
        }
    }
    
    
    func swiped(gesture: UIGestureRecognizer) {
        
        if let swipeGesuter = gesture as? UISwipeGestureRecognizer {
            
            switch swipeGesuter.direction {
                
            case UISwipeGestureRecognizerDirection.right:
                print("USer swiped right")
                
            case UISwipeGestureRecognizerDirection.left:
                print("User swiped left")
               
            default:
                break
                
            }
            
            
        }
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

