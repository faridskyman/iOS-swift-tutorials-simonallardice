//
//  ViewController.swift
//  WhatDay
//
//  Created by farid on 8/9/15.
//  Copyright (c) 2015 farid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBAction func displayDay(sender: AnyObject) {
        
        // grab date from date picker
        var chosenDate = self.datePicker.date
        
        // date formatter
        var formatter = NSDateFormatter()
        formatter.dateFormat = "EEEE"
        
        //grab day and create an alert
        let day = formatter.stringFromDate(chosenDate)
        let result = "That was a \(day)"
        
        let myAlert = UIAlertController(title: result, message: nil, preferredStyle: UIAlertControllerStyle.Alert)
        
        //add ok button
        myAlert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        
        //show
        self.presentViewController(myAlert, animated: true, completion: nil)
        
        
        
        
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

