//
//  TrackingViewController.swift
//  ArrowCargoDemo
//
//  Created by Pritam Hinger on 15/10/16.
//  Copyright © 2016 AppDevelapp. All rights reserved.
//

import UIKit

class TrackingViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("idConsignmentCell", forIndexPath: indexPath) as! ConsignmentListTableViewCell
        
        switch indexPath.row {
        case 0:
            cell.statusLabel.text = "P"
            cell.statusView.backgroundColor = ColorPallete.PickUpColor
        case 1:
            cell.statusLabel.text = "S"
            cell.statusView.backgroundColor = ColorPallete.SourceWareHouseColor
        case 2:
            cell.statusLabel.text = "T"
            cell.statusView.backgroundColor = ColorPallete.InTransitColor
        case 3:
            cell.statusLabel.text = "D"
            cell.statusView.backgroundColor = ColorPallete.DestinationWareHouseColor
        case 4:
            cell.statusLabel.text = "R"
            cell.statusView.backgroundColor = ColorPallete.DeliveredColor
        default:
            break
        }
        
        return cell
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
