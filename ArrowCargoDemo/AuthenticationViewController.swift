//
//  AuthenticationViewController.swift
//  ArrowCargoDemo
//
//  Created by Pritam Hinger on 15/10/16.
//  Copyright © 2016 AppDevelapp. All rights reserved.
//

import UIKit

class AuthenticationViewController: UIViewController,GIDSignInUIDelegate {

    var userType:String?
    
    @IBOutlet weak var signInButton: GIDSignInButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.topItem?.title = ""
        navigationItem.title = "\(userType!) Login"
        GIDSignIn.sharedInstance().uiDelegate = self
        signInButton.colorScheme = GIDSignInButtonColorScheme.Light
        signInButton.style = .Wide
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
