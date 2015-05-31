//
//  NoteTableViewCell.swift
//  ForestNotes
//
//  Created by Eleven Fifty on 5/31/15.
//  Copyright (c) 2015 Forest Gafford. All rights reserved.
//

import UIKit

class NoteTableViewCell: UITableViewCell {

    @IBOutlet weak var noteTitle: UILabel!
    @IBOutlet weak var noteText: UILabel!
    @IBOutlet weak var noteDate: UILabel!
    
    weak var note : Note! // '!' means that we not use the varialbe until we set a value ... we will set a value befor using it
    
    func setupCell(note : Note) {
        self.note = note
        noteTitle.text = note.title
        noteText.text = note.text
        noteDate.text = note.dateString
        
        //self.backgroundColor = UIColor.cyanColor()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
