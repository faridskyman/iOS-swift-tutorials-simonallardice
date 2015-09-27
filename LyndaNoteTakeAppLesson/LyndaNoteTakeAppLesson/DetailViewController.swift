//
//  DetailViewController.swift
//  LyndaNoteTakeAppLesson
//
//  Created by farid on 26/9/15.
//  Copyright (c) 2015 farid. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UITextView!
    
    
    // this is called when the value of detailItem is changed.
    var detailItem: String? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
 
        if objects.count == 0 {
            return
        }
        
        if let label = self.detailDescriptionLabel {
            //label.text = detail
            label.text = objects[currentIndex]
            if label.text == BLANK_NOTE {
                label.text = ""
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        detailViewController = self
        
        //show the keyboard
        detailViewController?.becomeFirstResponder()
        
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

