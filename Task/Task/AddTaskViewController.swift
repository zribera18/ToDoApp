//
//  AddTaskViewController.swift
//  Task
//
//  Created by Zach Ribera on 1/9/15.
//  Copyright (c) 2015 Zetch. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var notesField: UITextField!
    @IBOutlet weak var percentageField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if segue.identifier == "dismissAndSave" {
            let task = Task(title: titleField.text, notes: notesField.text, percentage: percentageField.text)
            TaskStore.sharedInstance.add(task)
        }
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
