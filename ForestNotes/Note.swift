//
//  Note.swift
//  ForestNotes
//
//  Created by Eleven Fifty on 5/31/15.
//  Copyright (c) 2015 Forest Gafford. All rights reserved.
//

import UIKit

class Note: NSObject, NSCoding {
    var title = ""
    var text = ""
    var date = NSDate()
    
    // no value is actually assigned so therefor there is no issue here with it.
    var dateString : String {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        return dateFormatter.stringFromDate(date)
    }

    override init() {
        super.init()
    }
    
    init(title: String, text: String) {
        self.title = title
        self.text = text
    }
    
    required init(coder aDecoder: NSCoder) {
        self.title = aDecoder.decodeObjectForKey("title") as! String
        self.text = aDecoder.decodeObjectForKey("text") as! String
        self.date = aDecoder.decodeObjectForKey("date") as! NSDate
    }
    
    func encodeWithCoder(aCoder : NSCoder){
        aCoder.encodeObject(title, forKey: "title")
        aCoder.encodeObject(text, forKey: "text")
        aCoder.encodeObject(date, forKey: "date")
    }
    
}
