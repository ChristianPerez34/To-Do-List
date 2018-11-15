//
//  ToDoListViewController.swift
//  To-Do List
//
//  Created by Christian Perez Villanueva on 11/10/18.
//  Copyright © 2018 Christian Perez Villanueva. All rights reserved.
//

import UIKit

class ToDoListViewController: UIViewController {
    @IBOutlet weak var addToList: UITextField!
    
    @IBOutlet weak var toDoListTableView: UITableView!
    var list: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapAddButton(_ sender: Any) {
        if let text = addToList.text{
            if text != ""{
                list.append(text)
                addToList.text = ""
                toDoListTableView.reloadData()
            }
        }
    }
}

extension ToDoListViewController: UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let toDoText = list[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoListCell")!
        cell.textLabel?.text = toDoText
        return cell
    }
}
