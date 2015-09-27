//
//  SecondViewController.swift
//  passDataBetweenViews
//
//  Created by farid on 26/9/15.
//  Copyright (c) 2015 farid. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    //var toPaass:String!
    var toPass:String!
    
    @IBOutlet weak var lblLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblLabel.text = toPass

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
