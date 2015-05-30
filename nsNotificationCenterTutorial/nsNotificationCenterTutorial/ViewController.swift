//
//  ViewController.swift
//  nsNotificationCenterTutorial
//
//  Created by Anthony Rodriguez on 5/30/15.
//  Copyright (c) 2015 capitalofcode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func buttonPressed(sender: UIButton) {
        NSNotificationCenter.defaultCenter().postNotificationName("messageNotification", object: NSString(string: "Anthony Rodriguez"))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let here = self
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "messageHandler:", name: "messageNotification", object: here)
            
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func messageHandler (notification: NSNotification){
        print("My name is \(notification.object)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

