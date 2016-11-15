//
//  UserPost.swift
//  Spotted
//
//  Created by Evan Grote on 11/15/16.
//  Copyright © 2016 Evan Grote. All rights reserved.
//

import Foundation
import Firebase

class UserPost {
    var description: String
    var tags: String
    var user: String
    var photo: String
    
    init(postDescription: String, postTags: String, posterId: String, postPhoto: String) {
        self.description = postDescription
        self.tags = postTags
        self.user = posterId
        self.photo = postPhoto
    }
    
    init(snapshot: FIRDataSnapshot) {
        self.description = snapshot.value(forKey: "description") as! String
        self.tags = snapshot.value(forKey: "tag") as! String
        self.user = snapshot.value(forKey: "user") as! String
        self.photo = snapshot.value(forKey: "userPhoto") as! String
    }
}
