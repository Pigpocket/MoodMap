//
//  Ratings.swift
//  MoodMap
//
//  Created by Tomas Sidenfaden on 3/7/18.
//  Copyright © 2018 Tomas Sidenfaden. All rights reserved.
//

import Foundation

struct Rating {

    static var shared: Rating = Rating()
    
    var communication: Float = 0
    var productivity: Float = 0
    var management: Float = 0
    var resources: Float = 0
    var schedule: Float = 0
    
}
