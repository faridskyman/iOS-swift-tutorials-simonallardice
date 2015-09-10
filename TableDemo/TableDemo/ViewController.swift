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
    
    let LMSToolsMenu = [
        ("Attendance", "Manage student attendances"),
        ("Enrollment", "Manage course enrollments"),
        ("Tutor Admin", "manage student accounts"),
        ("NAPFA", "Fitness Tracking Applic"),
        ("RMS", "Resource Booking system"),
        ("eDiscipline", "Manage student conducts")
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
        return 2;
    }
    
    
    // for table view to know count based on section selected.
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //
        if section == 0 {
            return LMSAppMenu.count
        }
        else {
            return LMSToolsMenu.count
        }
    }
    
    
    /// based on 'numberof rows in section' as its return 5, this is called 5 times.
    // below is updated to have better memory managememt. 'reusing cell' dequeue.
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //var cell = UITableViewCell()
        
        var cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        if indexPath.section == 0 {
            let (LMSModule, Descriptin) = LMSAppMenu[indexPath.row]
            cell.textLabel?.text = LMSModule
        } else {
            let (LMSModule, Descriptin) = LMSToolsMenu[indexPath.row]
            cell.textLabel?.text = LMSModule
        }
        return cell
    }
    
    

}

