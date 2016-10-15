//
//  ViewController.swift
//  ArrowCargoDemo
//
//  Created by Pritam Hinger on 15/10/16.
//  Copyright © 2016 AppDevelapp. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    var gradientLayer:CAGradientLayer!
    
    @IBOutlet weak var userTypeSegmentControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.hidden = true
        //addGradientLayer()
    }
    
    override func viewWillDisappear(animated: Bool) {
        self.navigationController?.navigationBar.hidden = false
    }
    
    @IBAction func employeeLogin(sender: UIButton) {
        performSegueWithIdentifier("loginSegue", sender: sender)
    }
    
    @IBAction func customerLogin(sender: UIButton) {
        performSegueWithIdentifier("loginSegue", sender: sender)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "loginSegue"{
            let destinationVC = segue.destinationViewController as! AuthenticationViewController
            if let button = sender as? UIButton{
                
                if button.tag == 10{
                    destinationVC.userType = "Customer"
                }
                else{
                    destinationVC.userType = "Employee"
                }
            }
        }
    }
    
    private func addGradientLayer() {
        gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        let firstColor = UIColor(red: 102/255.0, green: 204/255.0, blue: 255/255.0, alpha: 1.0)
        gradientLayer.colors = [UIColor.whiteColor().CGColor, firstColor.CGColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        view.layer.addSublayer(gradientLayer)
    }
}

