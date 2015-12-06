//
//  Task.swift
//  GhostList
//
//  Temporal Task
//
//  Created by Connor Wybranowski on 12/6/15.
//  Copyright © 2015 Wybro. All rights reserved.
//

import UIKit

class Task: NSObject {

    var title: String!
    var creationDate: NSDate!
    var completed: Bool!
    
    init(title: String, creationDate: NSDate, completed: Bool) {
        super.init()
        
        self.title = title
        self.creationDate = creationDate
        self.completed = completed
    }
    
    override var description: String {
        return "title: \(title)" +
                "creationDate: \(creationDate)" +
                "completed: \(completed)"
    }
}
