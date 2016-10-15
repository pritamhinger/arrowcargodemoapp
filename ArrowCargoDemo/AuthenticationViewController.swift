//
//  AuthenticationViewController.swift
//  ArrowCargoDemo
//
//  Created by Pritam Hinger on 15/10/16.
//  Copyright © 2016 AppDevelapp. All rights reserved.
//

import UIKit

class AuthenticationViewController: UIViewController,GIDSignInUIDelegate, GIDSignInDelegate {
    
    var userType:String?
    
    @IBOutlet weak var signInButton: GIDSignInButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.topItem?.title = ""
        navigationItem.title = "\(userType!) Login"
        GIDSignIn.sharedInstance().uiDelegate = self
        signInButton.colorScheme = GIDSignInButtonColorScheme.Light
        signInButton.style = .Wide
        GIDSignIn.sharedInstance().delegate = self
    }
    
    func signIn(signIn: GIDSignIn!, didSignInForUser user: GIDGoogleUser!, withError error: NSError!) {
        if (error == nil) {
            let userId = user.userID
            let idToken = user.authentication.idToken
            let fullName = user.profile.name
            let givenName = user.profile.givenName
            let familyName = user.profile.familyName
            let email = user.profile.email
            print("UserId : \(userId)")
            print("ID Token : \(idToken)")
            print("Full Name : \(fullName)")
            print("Family Name : \(familyName)")
            print("Given Name : \(givenName)")
            print("Email : \(email)")
            let tabVC = storyboard?.instantiateViewControllerWithIdentifier("AppEntryPointStoryboardId") as! UITabBarController
            self.navigationController?.pushViewController(tabVC, animated: true)
        } else {
            print("\(error.localizedDescription)")
        }
    }
    
    func signIn(signIn: GIDSignIn!, didDisconnectWithUser user:GIDGoogleUser!, withError error: NSError!) {
        print("Signing Out");
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
