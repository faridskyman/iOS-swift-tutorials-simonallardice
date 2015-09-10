//
//  ViewController.swift
//  TableDemo
//
//  Created by farid on 10/9/15.
//  Copyright (c) 2015 farid. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    let LMSAppMenu = [
        ("Quiz", "Quiz List"),
        ("Survey", "Survey List"),
        ("Mobile project", "Task and Preview"),
        ("Go to LMS", "SSO to the LMS")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // table view deligate that needs to be implemented
    // creates a table with one section, 5 rows and each shows "hello"


    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //
        return LMSAppMenu.count
    }
    
    
    /// based on 'numberof rows in section' as its return 5, this is called 5 times.
    // below is updated to 
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //
        let (LMSModule, Descriptin) = LMSAppMenu[indexPath.row]
        
        var cell = UITableViewCell()
        cell.textLabel?.text = LMSModule
        
        return cell
        
    }
    
    

}

