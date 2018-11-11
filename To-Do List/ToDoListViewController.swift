//
//  ToDoListViewController.swift
//  To-Do List
//
//  Created by Christian Perez Villanueva on 11/10/18.
//  Copyright © 2018 Christian Perez Villanueva. All rights reserved.
//

import UIKit

class ToDoListViewController: UIViewController {
    
    var list: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        list.append("Buy food for cats")
        list.append("Pick up materials from office")
        list.append("Happy hour at local bar")
        list.append("Call Chris - store front")
        list.append("Sone really long text to se how much text I can put before it is crossed out for no reason at all")
        // Do any additional setup after loading the view.
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
