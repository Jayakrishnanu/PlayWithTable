//
//  ImageTableViewCell.swift
//  CellViews
//
//  Created by Jayakrishnan u on 12/21/20.
//

import UIKit

class ImageTableViewCell: UITableViewCell {
    
    static let identifier = "ImageTableViewCell"
    
    private let cellImageView: UIImageView = {
        let imageView = UIImageView()
        return imageView
    }()
    
    func configure(with image: String) {
        cellImageView.image = UIImage(named: image)
        cellImageView.contentMode = .scaleAspectFill
        addSubview(cellImageView)
        cellImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: cellImageView, attribute: .width, relatedBy: .equal, toItem: self, attribute: .width, multiplier: 1, constant: 100),
            NSLayoutConstraint(item: cellImageView, attribute: .height, relatedBy: .equal, toItem: self, attribute: .width, multiplier: 1, constant: 100),
            NSLayoutConstraint(item: cellImageView, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: cellImageView, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0)
        ])
        layoutSubviews()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        cellImageView.frame = CGRect(x: 5, y: 5, width: 100, height: 100)
        cellImageView.layer.masksToBounds = true
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
