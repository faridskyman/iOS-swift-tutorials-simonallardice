//
//  ViewController.swift
//  passDataBetweenViews
//
//  Created by farid on 26/9/15.
//  Copyright (c) 2015 farid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtBox: UITextField!
    
    @IBOutlet weak var btnSend: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "segueTest") {
            var svc = segue.destinationViewController as SecondViewController
            //svc.toPass = txtBox.text
            svc.toPass = txtBox.text;
            
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

