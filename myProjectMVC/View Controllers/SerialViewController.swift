//
//  SerialViewController.swift
//  myProjectMVC
//
//  Created by Мак on 6/6/19.
//  Copyright © 2019 Aidar Zhussupov. All rights reserved.
//

import UIKit

class SerialViewController: UIViewController {
// tied with view
    @IBOutlet weak var serialTableView: UITableView!
    
    let cellController = CellController()
    
   
  // tied with model
    var serials = [Serial]()

}

//Navigation
extension SerialViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "SerialDetailSegue" else {return}
        guard let row = serialTableView.indexPathForSelectedRow?.row else {return}
        let destination = segue.destination as! SerialDetailViewController
        let serial = serials[row]
        destination.serial = serial
        
    }
}

// mark: UIViewController
extension SerialViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        serials = DataController.shared.loadSerials()
        serialTableView.dataSource = self
    }
}

// mark: UITablwViewDataSource
extension SerialViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return serials.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = serialTableView.dequeueReusableCell(withIdentifier: "SerialCell")!
        let serial = serials[indexPath.row]
        cellController.configure(cell, with: serial)
        return cell
    }
    
    
}

