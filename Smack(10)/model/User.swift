//
//  User.swift
//  Smack(10)
//
//  Created by Maksim Egorov on 11/24/19.
//  Copyright © 2019 Max E. All rights reserved.
//

import ObjectMapper
class User: Mappable {
    var id: String?
    var token: String?
    var avatarColor: String?
    var avatarName: String?
    var email: String?
    var name: String?
    var v: Int?
    
    required init?(map: Map) {
    }
        
    
    init(email: String, token: String, id: String, avatarColor: String, avatarName: String, name: String, v: Int) {
        self.id = id
        self.avatarColor = avatarColor
        self.avatarName = avatarName
        self.email = email
        self.name = name
        self.v = v
        self.token = token
    }
    
    // Mark :  Mappable
    func mapping(map: Map) {
        id <- map["_id"]
        email <- map["email"]
        token <- map["token"]
        avatarName <- map["avatarName"]
        avatarColor <- map["avatarColor"]
        name <- map["name"]
        v <- map["__v"]
        
    }
}

