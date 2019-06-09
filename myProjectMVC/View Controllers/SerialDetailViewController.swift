//
//  SerialDetailViewController.swift
//  myProjectMVC
//
//  Created by Мак on 6/9/19.
//  Copyright © 2019 Aidar Zhussupov. All rights reserved.
//

import UIKit

class SerialDetailViewController: UIViewController {

    
    @IBOutlet weak var SerialStackView: UIStackView!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var serialNameLabel: UILabel!
    
    @IBOutlet weak var serialRatingLabel: UILabel!
    
    @IBOutlet weak var serialNotesLabel: UILabel!
    @IBOutlet weak var serialDateLabel: UILabel!
    
    var serial: Serial!
}


extension SerialDetailViewController {
    func updateUI(size: CGSize)  {
        let  isVertical = size.width < size.height
        SerialStackView.axis = isVertical ? .vertical : .horizontal
        imageView.image = serial.photo
        title = serial.name
        serialRatingLabel.text = serial.ratingBar
        serialNotesLabel.text = serial.notes
        serialDateLabel.text = serial.date
    }
}
extension SerialDetailViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(size: view.bounds.size)
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        updateUI(size: size)
    }
}
