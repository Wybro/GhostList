//
//  ListAPI.swift
//  GhostList
//
//  Created by Connor Wybranowski on 12/6/15.
//  Copyright © 2015 Wybro. All rights reserved.
//

import UIKit

class ListAPI: NSObject {
    
    private let persistencyManager: PersistencyManager
    
    class var sharedInstance: ListAPI {
        
        struct Singleton {
            
            static let instance = ListAPI()
        }
        return Singleton.instance
    }
    
    override init() {
        persistencyManager = PersistencyManager()
        super.init()
    }
    
    func getTasks() -> [Task] {
        return persistencyManager.getTasks()
    }
    
    func addTask(task: Task, index: Int) {
        persistencyManager.addTask(task, index: index)
    }
    
    func deleteTask(index: Int) {
        persistencyManager.deleteTaskAtIndex(index)
    }
    
    // Use for daily reset of tasks 
    func clearAllTasks() {
        persistencyManager.clearAllTasks()
    }

}
