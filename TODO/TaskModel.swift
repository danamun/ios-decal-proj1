//
//  TaskModel.swift
//  TODO
//
//  Created by Da Y Mun on 9/18/15.
//  Copyright © 2015 danamun. All rights reserved.
//

import UIKit

class TaskModel: NSObject {
    var date: NSDate!
    var name: String!
    var taskDescription: String!
    var completed = false
    
    init(date: NSDate, name: String, description: String) {
        self.date = date
        self.name = name
        self.taskDescription = description
    }
}

