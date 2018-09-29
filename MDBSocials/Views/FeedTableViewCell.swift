//
//  FeedTableViewCell.swift
//  MDBSocials
//
//  Created by Andrés Medrano on 9/27/18.
//  Copyright © 2018 Andrés Medrano. All rights reserved.
//

import UIKit

class FeedTableViewCell: UITableViewCell {
    
    var usernameLabel : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
         // Initialization code
        usernameLabel = UILabel(frame: CGRect(x: 0, y: 2 * contentView.frame.height / 5, width: contentView.frame.width, height: 20))
        usernameLabel.textAlignment = .center
        usernameLabel.font = UIFont.boldSystemFont(ofSize: 12)
        contentView.addSubview(usernameLabel)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
