//
//  StudentListiTableViewCell.swift
//  CoreDataDemo1
//
//  Created by STUDENT on 4/25/24.
//

import UIKit

class StudentListiTableViewCell: UITableViewCell {
    
    @IBOutlet weak var namelabel: UILabel!
    
    @IBOutlet weak var rollnolabel: UILabel!
    
    @IBOutlet weak var addresslabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
