//
//  InfoViewController.swift
//  PhotoViewer
//
//  Created by farid on 12/9/15.
//  Copyright (c) 2015 farid. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {
    
    var currentphoto : Photo?
    
    @IBOutlet weak var InfoLabel: UILabel!
    

    @IBAction func btnOK(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.InfoLabel.text = currentphoto!.notes
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
