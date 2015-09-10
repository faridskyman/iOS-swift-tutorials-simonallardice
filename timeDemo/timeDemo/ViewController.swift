//
//  ViewController.swift
//  timeDemo
//
//  Created by farid on 7/9/15.
//  Copyright (c) 2015 farid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblTime: UILabel!
    
    
    @IBAction func btnUpdateTime(sender: AnyObject) {
    
        // this gets the current date and time.
        let now = NSDate()
        
        var formatter = NSDateFormatter()
        formatter.dateFormat = "HH:mm:ss a"
        
        //update label
        lblTime.text = formatter.stringFromDate(now)
    
        
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

