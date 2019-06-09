//
//  CellController.swift
//  myProjectMVC
//
//  Created by Мак on 6/9/19.
//  Copyright © 2019 Aidar Zhussupov. All rights reserved.
//

import UIKit


class CellController {
    func configure(_ cell: UITableViewCell, with serial: Serial) {
        cell.textLabel?.text = serial.name
        cell.detailTextLabel?.text = "\(serial.ratingBar)"
        cell.imageView?.image = serial.photo
    }
}
