//
//  ProfileViewController.swift
//  ArrowCargoDemo
//
//  Created by Pritam Hinger on 15/10/16.
//  Copyright © 2016 AppDevelapp. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Public Information"
        case 1:
            return "Private Information"
        case 2:
            return "Notifications"
        default:
            return "Others"
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 4
        case 2:
            return 1
        default:
            return 1
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if indexPath.section == 0{
            let customCell = tableView.dequeueReusableCellWithIdentifier("idCellCustom", forIndexPath: indexPath) as! PublicProfileTableViewCell
            customCell.userName.text = "Pritam Hinger"
            customCell.emailAddress.text = "pritamgenius24@gmail.com"
            return customCell
        }
        else{
            let cell = tableView.dequeueReusableCellWithIdentifier("idBasicCell", forIndexPath: indexPath)
            var cellTitle = "-- NA --"
            switch indexPath.section {
            case 1:
                switch indexPath.row {
                case 0:
                    cellTitle = "Change Password"
                case 1:
                    cellTitle = "Create Passcode"
                case 2:
                    cellTitle = "Email Settings"
                case 3:
                    cellTitle = "Account Privacy"
                default:
                    break
                }
            case 2:
                switch indexPath.row {
                case 0:
                    cellTitle = "Notification Settings"
                default:
                    break
                }
                
            case 3:
                switch indexPath.row {
                case 0:
                    cellTitle = "Logout"
                default:
                    break
                }
            default:
                break
            }
            
            cell.textLabel?.text = cellTitle
            return cell
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.section == 0{
            return CGFloat(integerLiteral: 100)
        }
        
        return CGFloat(integerLiteral: 44)
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
