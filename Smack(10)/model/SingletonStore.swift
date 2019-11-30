//
//  SingletonStore.swift
//  Smack(10)
//
//  Created by Maksim Egorov on 11/24/19.
//  Copyright © 2019 Max E. All rights reserved.
//

import Foundation

class SingletonStore : NSObject {
    fileprivate override init(){}
    static let sharedInstance = SingletonStore()
    var user : User?
}


