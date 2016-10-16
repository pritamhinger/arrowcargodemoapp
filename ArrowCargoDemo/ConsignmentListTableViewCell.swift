//
//  ConsignmentListTableViewCell.swift
//  ArrowCargoDemo
//
//  Created by Pritam Hinger on 16/10/16.
//  Copyright © 2016 AppDevelapp. All rights reserved.
//

import UIKit

class ConsignmentListTableViewCell: UITableViewCell {

    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var consignmentIdLabel: UILabel!
    @IBOutlet weak var estimatedDeliveryDateLabel: UILabel!
    @IBOutlet weak var bookingDateLabel: UILabel!
    @IBOutlet weak var destinationLabel: UILabel!
    @IBOutlet weak var sourceLabel: UILabel!
    @IBOutlet weak var statusView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

}
