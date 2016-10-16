//
//  UserProfile.swift
//  ArrowCargoDemo
//
//  Created by Pritam Hinger on 16/10/16.
//  Copyright © 2016 AppDevelapp. All rights reserved.
//

import Foundation

public class UserProfile: NSObject,NSCoding {
    
    public var userId = ""
    public var idToken = ""
    public var fullName = ""
    public var givenName = ""
    public var familyName = ""
    public var emailAddress = ""
        
    init(user: GIDGoogleUser){
        self.userId = user.userID
        self.idToken = user.authentication.idToken
        self.fullName = user.profile.name
        self.givenName = user.profile.givenName
        self.familyName = user.profile.familyName
        self.emailAddress = user.profile.email
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init()
        self.userId = aDecoder.decodeObjectForKey("UserId") as! String
        self.idToken = aDecoder.decodeObjectForKey("IdToken") as! String
        self.fullName = aDecoder.decodeObjectForKey("FullName") as! String
        self.givenName = aDecoder.decodeObjectForKey("GivenName") as! String
        self.familyName = aDecoder.decodeObjectForKey("FamilyName") as! String
        self.emailAddress = aDecoder.decodeObjectForKey("EmailAddress") as! String
        
    }
    
    public func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(self.userId, forKey: "UserId")
        aCoder.encodeObject(self.idToken, forKey: "IdToken")
        aCoder.encodeObject(self.fullName, forKey: "FullName")
        aCoder.encodeObject(self.givenName, forKey: "GivenName")
        aCoder.encodeObject(self.familyName, forKey: "FamilyName")
        aCoder.encodeObject(self.emailAddress, forKey: "EmailAddress")
    }
}