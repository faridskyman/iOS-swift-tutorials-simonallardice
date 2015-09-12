//
//  PhotosTableViewController.swift
//  PhotoViewer
//
//  Created by farid on 12/9/15.
//  Copyright (c) 2015 farid. All rights reserved.
//

import UIKit

class PhotosTableViewController: UITableViewController {
    
    //array for data source for the photos
    var photos = [Photo]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var newPhoto = Photo(name: "Emerald Bay", filename: "emeraldbay", notes: "Notes on Emerald Bay")
        photos.append(newPhoto)
        newPhoto = Photo(name: "Tree Bay", filename: "joshuatree", notes: "Notes on tree Bay")
        photos.append(newPhoto)
        newPhoto = Photo(name: "Sun Bay", filename: "sunset", notes: "Notes on sun Bay")
        photos.append(newPhoto)
        newPhoto = Photo(name: "Snow Bay", filename: "snowman", notes: "Notes on snow Bay")
        photos.append(newPhoto)
        newPhoto = Photo(name: "Red Bay", filename: "redrock", notes: "Notes on rock Bay")
        photos.append(newPhoto)
      
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return photos.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as UITableViewCell

        // Configure the cell...
        var currPhoto: Photo = photos[indexPath.row]
        
        cell.textLabel?.text = currPhoto.name
        cell.imageView?.image = UIImage(named: currPhoto.filename)

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        var secondScene = segue.destinationViewController as DisplayViewController
        
        // Pass the selected object to the new view controller.
        
        // GET CURRENT SELECTED INDEX
        if let indexPath = self.tableView.indexPathForSelectedRow() {
            //load the selected photo from array
            let selectedPhoto = photos[indexPath.row]
            //pass the object to next view (declared object 'currentPhoto'
            secondScene.currentPhoto = selectedPhoto
        }
        
    }
    

}
