//
//  TypeStore.PrioritizedTask.swift
//  WatchList
//
//  Created by Cavit KULAKLI on 6.12.2019.
//  Copyright © 2019 Cavit KULAKLI. All rights reserved.
//

import Combine

extension TitleStore {
    struct PrioritizedTitle {
        let priority: Title.Kind.Priority
        var titles: [Title]
    }
}


extension TitleStore.PrioritizedTitle: Identifiable {
    var id: Title.Kind.Priority { priority }
}
