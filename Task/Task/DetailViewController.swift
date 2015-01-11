//
//  DetailViewController.swift
//  Task
//
//  Created by Zach Ribera on 1/9/15.
//  Copyright (c) 2015 Zetch. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!

    @IBOutlet weak var notesText: UITextView!
    
    @IBOutlet weak var percentageComplete: UILabel!

    var detailItem: Task? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }
//    func configureView() {
//        // Update the user interface for the detail item. 
//        if let detail: Task = self.detailItem {
//            if let label = self.detailDescriptionLabel {
//                label.text = detail.title
//            }
//        }
//    }
    func configureView() {
        // Update the user interface for the detail item.
        if let detail: Task = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.title
            }
            
            if let notes = self.notesText {
                notes.text = detail.notes
            }
            
            if let percentage = self.percentageComplete {
                percentage.text = "Percentage complete: " + detail.percentage
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

