//
//  ViewController.swift
//  NavBar
//
//  Created by Carlos andres Diaz bravo  on 2020-05-13.
//  Copyright © 2020 Carlos andres Diaz bravo . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var NavBar: UINavigationBar!
    @IBOutlet var Button: UIBarButtonItem!
    @IBOutlet var Height: NSLayoutConstraint!
    var consclosed = true
    
    override func viewDidLoad() {

        super.viewDidLoad()
      }

    
    
    @IBAction func AddButton(_ sender: Any) {
        
        print("Button Pressed")
        if consclosed {
            NavBarClosed()
        }else {
            NavBarOpen()
        }
    }
    
    
    func NavBarOpen (){
        UIView .animate(withDuration:0.3){
            let open = CGAffineTransform(rotationAngle: 88)
            self.Button.target = open as AnyObject
            
        }
        
    }
    
    func NavBarClosed () {
        UIView.animate(withDuration:0.3){
            self.Height.constant  = 40
            let closed =
                CGAffineTransform(rotationAngle: 0)
            self.Button.target = closed as AnyObject
        }
    }
}
