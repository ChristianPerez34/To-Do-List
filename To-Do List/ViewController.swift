//
//  ViewController.swift
//  To-Do List
//
//  Created by Christian Perez Villanueva on 11/6/18.
//  Copyright © 2018 Christian Perez Villanueva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var toDoListItems: UITextView!
    @IBOutlet weak var toDoListAddItem: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func didAddItemLoad(_ sender: Any) {
        if let text = toDoListAddItem.text {
            if text == "" {
                return
            }
            toDoListItems.text.append("\(text)\n")
            toDoListAddItem.text = ""
            toDoListAddItem.resignFirstResponder()
        }
    }
    
}

