//
//  TaskStore.swift
//  Task
//
//  Created by Zach Ribera on 1/9/15.
//  Copyright (c) 2015 Zetch. All rights reserved.
//

import Foundation

class TaskStore {
    class var sharedInstance: TaskStore {
        struct Static {
            static let instance = TaskStore()
        }
        return Static.instance }
    
    var tasks: [Task] = []
    
    var count: Int {
        return tasks.count
    }
    
    func add(task: Task) {
        tasks.append(task)
    }
    func replace(task: Task, atIndex index: Int) {
        tasks[index] = task
    }
    func get(index: Int) -> Task {
        return tasks[index]
    }
    
    func removeTaskAtIndex(index: Int) {
        tasks.removeAtIndex(index)
    }
}
//Read more at http://www.airpair.com/swift/building-swift-app-tutorial-2#z0zZ6bvbIs2pYcYf.99