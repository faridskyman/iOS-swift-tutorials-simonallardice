//
//  ViewController.swift
//  basicInteraction
//
//  Created by farid on 6/9/15.
//  Copyright (c) 2015 farid. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var simpleText: UITextField!
    
    @IBOutlet weak var simpleLabel: UILabel!
    

    @IBAction func changeLabel(sender: AnyObject) {
        simpleLabel.text = "hello, " + simpleText.text + "!!"
        
        //this will cause the screen keyboard to hide.
        self.simpleText.resignFirstResponder()
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return false
    }
    
    // used to hide keyboard when touch on screen
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
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

