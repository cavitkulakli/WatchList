//
//  Type.swift
//  WatchList
//
//  Created by Cavit KULAKLI on 6.12.2019.
//  Copyright © 2019 Cavit KULAKLI. All rights reserved.
//

import Foundation

struct Title: Identifiable {
    let id = UUID()
    
    var name: String
    var done = false
}
