//
//  TableViewCell.swift
//  To-Do List
//
//  Created by Christian Perez Villanueva on 11/15/18.
//  Copyright © 2018 Christian Perez Villanueva. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var checkListButton: UIButton!
    
    func setLabel(text: String){
        cellLabel.text = text
    }

}
