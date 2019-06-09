//
//  serial.swift
//  myProjectMVC
//
//  Created by Мак on 6/6/19.
//  Copyright © 2019 Aidar Zhussupov. All rights reserved.
//

import UIKit

class Serial {
    var name: String
    var photo: UIImage?
    var notes: String
    var rating: Int
    var timestamp: Date
    
    init(name: String, photo: String, notes: String, rating: Int) {
        self.name = name
        self.photo = UIImage(named: photo)
        self.notes = notes
        self.rating = rating
        self.timestamp = Date()
    }
    
   
    }


extension Serial {
    
    var date: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
        dateFormatter.locale = Locale.current
        return dateFormatter.string(from: timestamp)
    }
    
    var ratingBar: String {
        return String(repeating: "⭐️", count: rating)
    }
}
