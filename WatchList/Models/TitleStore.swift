//
//  TypeStore.swift
//  WatchList
//
//  Created by Cavit KULAKLI on 6.12.2019.
//  Copyright © 2019 Cavit KULAKLI. All rights reserved.
//

import Combine

class TitleStore: ObservableObject {
    
    @Published var prioritizedTitles = [
        PrioritizedTitle(
            priority: .high,
            kind: .book,
            names: [
                "Lord Of The Rings",
                "Harry Potter"
            ]
        ),
        PrioritizedTitle(
            priority: .low,
            kind: .movie,
            names: [
                "Lord Of The Rings",
                "Harry Potter"
            ]
        )
    ]
    
    func getIndex(for priority: Title.Kind.Priority) -> Int {
        prioritizedTitles.firstIndex {
            $0.priority == priority
        }!
    }
}

private extension TitleStore.PrioritizedTitle {
    init(priority: Title.Kind.Priority, kind: Title.Kind, names: [String]) {
        self.init(
            priority: priority,
            kind: kind,
            titles: names.map { Title(name: $0)}
        )
    }
}
