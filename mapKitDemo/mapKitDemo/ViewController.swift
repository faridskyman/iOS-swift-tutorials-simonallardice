//
//  ViewController.swift
//  mapKitDemo
//
//  Created by farid on 15/9/15.
//  Copyright (c) 2015 farid. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var theMapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var latitude:CLLocationDegrees = 1.291094
        var longtitude:CLLocationDegrees = 103.785103
        
        //zoom in
        var latDelta:CLLocationDegrees = 0.001
        var lonDelta:CLLocationDegrees = 0.001
        
        
        var theSpan:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lonDelta)
        
        var thePlaceLoc:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longtitude)
        
        var theRegion:MKCoordinateRegion = MKCoordinateRegionMake(thePlaceLoc, theSpan)
        
        self.theMapView.setRegion(theRegion, animated: true)
        
        
        //https: //www.google.com.sg/maps/place/2+Science+Park+Dr,+Singapore+118222/@1.291094,103.785103,17z/data=!4m7!1m4!3m3!1s0x31da1a52edc26d91:0xcd26a83206515b8d!2s2+Science+Park+Dr,+Singapore+118222!3b1!3m1!1s0x31da1a52edc26d91:0xcd26a83206515b8d?hl=en
        
        var theAnnotate = MKPointAnnotation()
        theAnnotate.coordinate = thePlaceLoc
        theAnnotate.title = "Science Park 2"
        theAnnotate.subtitle = "The Alpha, Wizlearn Tech"
        
        self.theMapView.addAnnotation(theAnnotate)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

