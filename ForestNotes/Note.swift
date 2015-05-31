//
//  Note.swift
//  ForestNotes
//
//  Created by Eleven Fifty on 5/31/15.
//  Copyright (c) 2015 Forest Gafford. All rights reserved.
//

import UIKit

class Note: NSObject {
    var title = ""
    var text = ""
    var date = NSDate()
    
    // no value is actually assigned so therefor there is no issue here with it.
    var dateString : String {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        return dateFormatter.stringFromDate(date)
    }
    
}
