//
//  TitleStore.PrioritizedTitle.swift
//  WatchList
//
//  Created by Cavit KULAKLI on 6.12.2019.
//  Copyright © 2019 Cavit KULAKLI. All rights reserved.
//

import Combine
import Foundation

extension TitleStore {
    struct PrioritizedInKindedTitle: Identifiable{
        let id = UUID()
        
        let kind: Title.Kind
        let priority: Title.Kind.Priority
        var titles: [Title]
    }
    
}




