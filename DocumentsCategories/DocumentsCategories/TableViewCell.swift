//
//  TableViewCell.swift
//  DocumentsCategories
//
//  Created by Chris Rehagen on 2/27/19.
//  Copyright © 2019 Chris Rehagen. All rights reserved.
//

import UIKit
import CoreData

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var sizeLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
