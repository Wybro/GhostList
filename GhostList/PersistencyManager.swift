//
//  PersistencyManager.swift
//  GhostList
//
//  Created by Connor Wybranowski on 12/6/15.
//  Copyright © 2015 Wybro. All rights reserved.
//

import UIKit

class PersistencyManager: NSObject {

    private var tasks = [Task]()
    
    override init() {
        let task1 = Task(title: "Fix website", creationDate: NSDate(), completed: false)
        
        let task2 = Task(title: "Write paper", creationDate: NSDate(), completed: false)
        
        let task3 = Task(title: "Call vendor", creationDate: NSDate(), completed: false)
        
        tasks = [task1, task2, task3]
    }
    
    func getTasks() -> [Task] {
        return tasks
    }
    
    func addTask(task: Task, index: Int) {
        if (tasks.count >= index) {
            tasks.insert(task, atIndex: index)
        }
        else {
            tasks.append(task)
        }
    }
    
    func deleteTaskAtIndex(index: Int) {
        tasks.removeAtIndex(index)
    }
    
    func clearAllTasks() {
        tasks.removeAll()
    }
}
