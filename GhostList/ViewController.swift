//
//  ViewController.swift
//  GhostList
//
//  Created by Connor Wybranowski on 12/6/15.
//  Copyright © 2015 Wybro. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private var allTasks = [Task]()
//    private var currentTaskData
//    private var currentTaskIndex = 0
    @IBOutlet var tasksTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        allTasks = ListAPI.sharedInstance.getTasks()
//        print("Before clear: Number of tasks = \(allTasks.count)")
//        ListAPI.sharedInstance.clearAllTasks()
//        allTasks = ListAPI.sharedInstance.getTasks()
//        print("After clear: Number of tasks = \(allTasks.count)")
        
        tasksTableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allTasks.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tasksTableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel!.text = allTasks[indexPath.row].title
        cell.detailTextLabel!.text = allTasks[indexPath.row].creationDate.description
        return cell
    }


}

