//
//  PublicProfileTableViewCell.swift
//  ArrowCargoDemo
//
//  Created by Pritam Hinger on 16/10/16.
//  Copyright © 2016 AppDevelapp. All rights reserved.
//

import UIKit

class PublicProfileTableViewCell: UITableViewCell {
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var emailAddress: UILabel!
    @IBOutlet weak var separator: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
