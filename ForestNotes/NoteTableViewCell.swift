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

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
