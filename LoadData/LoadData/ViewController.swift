//
//  ViewController.swift
//  LoadData
//
//  Created by farid on 8/9/15.
//  Copyright (c) 2015 farid. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {


 
    // data source
    let moodArray = ["Happy", "Sad", "Normal", "Estatic", "overJoyed", "Optimistic",
    "Wildered", "giddy", "Bored", "Sleepy", "relaxed", "Anxious"]
    
    //number of column in the data picker (compulsary)
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //number of rows
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return moodArray.count
    }
    
    //data bind
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return moodArray[row]
    }
    
    
    //didselect row
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var newBackgroundColor: UIColor
        
        switch row {
        case 0,1,2,3,4,5:
            newBackgroundColor = UIColor.yellowColor();
        case 6,7,8,9,10:
            newBackgroundColor = UIColor.grayColor();
        default:
            newBackgroundColor = UIColor(red: 200/255, green: 210/255, blue: 200/255, alpha: 1.0)
        }
        
        self.view.backgroundColor = newBackgroundColor
        
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

