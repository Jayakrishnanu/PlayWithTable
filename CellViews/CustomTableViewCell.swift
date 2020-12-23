//
//  CustomTableViewCell.swift
//  CellViews
//
//  Created by Jayakrishnan u on 12/21/20.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet var customImageView: UIImageView!
    @IBOutlet var customLabel: UILabel!
    
    static let identifier = "CustomTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "CustomTableViewCell", bundle: nil)
    }
    
    func configure() {
        customImageView.image = UIImage(named: "2")
        customLabel.text = "I am in the custom"
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
