//
//  CourseTableViewCell.swift
//  CellViews
//
//  Created by Jayakrishnan u on 12/22/20.
//

import UIKit

class CourseTableViewCell: UITableViewCell {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var lessionLabel: UILabel!
    
    
    
    func configure(_ course: Course) {
        titleLabel.text = course.courseName
        descriptionLabel.text = course.courseDescription
        if course.lessions > 15 {
            accessoryType = .detailDisclosureButton
            lessionLabel.text = "Lessions: 15+ course lessions"
        } else {
            lessionLabel.text = "Lessions: \(course.lessions)"
            accessoryType = .none
        }
        
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
