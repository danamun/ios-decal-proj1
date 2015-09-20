//
//  AllTasksModel.swift
//  TODO
//
//  Created by Da Y Mun on 9/18/15.
//  Copyright © 2015 danamun. All rights reserved.
//

import UIKit

class AllTasksModel: NSObject {
    var listOfTasks : [TaskModel] = []
    
    func addTask(task: TaskModel) {
        listOfTasks.append(task)
    }
    
    func getTaskAtIndex(index: Int) -> TaskModel! {
        return listOfTasks[index]
    }
    
    func deleteTaskAtIndex(index: Int) {
        listOfTasks.removeAtIndex(index)
    }
    
    func getNumberOfCompleted() -> Int {
        var numOfCompleted = 0
        if listOfTasks.count >= 1 {
            for i in 0...listOfTasks.count-1 {
                let seconds = -listOfTasks[i].date.timeIntervalSinceNow
                let hours = seconds/3600;
                if ((hours < 24) && (listOfTasks[i].completed)) {
                    numOfCompleted += 1
                }
            }
        }
        return numOfCompleted
    }

    func reloadData() {
        if listOfTasks.count >= 1 {
            for i in 0...listOfTasks.count-1 {
                let seconds = -listOfTasks[i].date.timeIntervalSinceNow
                let hours = seconds/3600;
                if (hours > 24) {
                    deleteTaskAtIndex(i)
                }
            }
        }
    }
}
