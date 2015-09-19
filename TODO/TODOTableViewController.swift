//
//  TODOTableViewController.swift
//  TODO
//
//  Created by Da Y Mun on 9/17/15.
//  Copyright © 2015 danamun. All rights reserved.
//

import UIKit

// Global Variables
var tasks : AllTasksModel = AllTasksModel()

class TODOTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.title = "TODO List"
        
        let addButton = UIBarButtonItem(title: "Add", style: UIBarButtonItemStyle.Plain, target: self, action: Selector("goToAddView"))
        self.navigationItem.rightBarButtonItem = addButton
        
        let statsButton = UIBarButtonItem(title: "Stats", style: UIBarButtonItemStyle.Plain, target: self,
            action: Selector("goToStatsPopover"))
        self.navigationItem.leftBarButtonItem = statsButton
    }
    
    override func viewWillAppear(animated: Bool) {
        tasks.reloadData()
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.listOfTasks.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCellWithIdentifier("TODOTableViewCell", forIndexPath: indexPath)
        let cell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "TODOTableViewCell")

        // Configure the cell...
        cell.textLabel?.text = tasks.listOfTasks[indexPath.row].name
        cell.detailTextLabel?.text = tasks.listOfTasks[indexPath.row].taskDescription

        return cell
    }

    
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        if tasks.listOfTasks[indexPath.row].completed {
            return false
        }
        return true
    }
    
    override func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        
        let completeButton:UITableViewRowAction = UITableViewRowAction(style: UITableViewRowActionStyle.Default, title: "Complete") { (action:UITableViewRowAction, indexPath:NSIndexPath) -> Void in
            tasks.listOfTasks[indexPath.row].completed = true
            tableView.cellForRowAtIndexPath(indexPath)?.backgroundColor = UIColor.lightGrayColor()
        };
        completeButton.backgroundColor = LIGHTERBLUE
        
        let declineButton: UITableViewRowAction = UITableViewRowAction(style: UITableViewRowActionStyle.Default, title: "Delete") { (action:UITableViewRowAction, indexPath:NSIndexPath) -> Void in
            tasks.deleteTaskAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        };
        declineButton.backgroundColor = UIColor.redColor()
        return [completeButton, declineButton];
    }

    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }

    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    
    func goToAddView() {
        let addVC = AddViewController()
        self.navigationController?.pushViewController(addVC, animated: true)
    }
    
    func goToStatsPopover() {
        let statsVC = StatsViewController()
        self.navigationController?.pushViewController(statsVC, animated: true)
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
