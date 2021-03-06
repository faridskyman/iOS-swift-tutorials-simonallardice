//
//  DisplayViewController.swift
//  PhotoViewer
//
//  Created by farid on 12/9/15.
//  Copyright (c) 2015 farid. All rights reserved.
//

import UIKit

class DisplayViewController: UIViewController {
    
    var currentPhoto: Photo?

    @IBOutlet weak var currentImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //load image
        
        var image = UIImage(named: currentPhoto!.filename)
        currentImage.image = image
        
        //display title
        self.title = currentPhoto!.name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        var thirdScene = segue.destinationViewController as InfoViewController
        
        // Pass the selected object to the new view controller.
        //thirdScene.InfoLabel.text = currentPhoto?.notes
        thirdScene.currentphoto = currentPhoto
    }
    

}
