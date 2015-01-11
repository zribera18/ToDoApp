//
//  Task.swift
//  Task
//
//  Created by Zach Ribera on 1/9/15.
//  Copyright (c) 2015 Zetch. All rights reserved.
//

import Foundation


struct Task {
    let title: String
    let notes: String
    let percentage: String
    init(title: String, notes: String, percentage: String) {
        self.title = title
        self.notes = notes
        self.percentage = percentage
    }
}
