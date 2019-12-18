//
//  TypeStore.swift
//  WatchList
//
//  Created by Cavit KULAKLI on 6.12.2019.
//  Copyright © 2019 Cavit KULAKLI. All rights reserved.
//

import Combine

class TitleStore: ObservableObject {
    
    @Published var prioritizedInKindedTitles = [
        PrioritizedInKindedTitle(
            kind: .book,
            priority: .high,
            names: [
                "Lord Of The Rings",
                "Harry Potter"
            ]
        ),
        PrioritizedInKindedTitle(
            kind: .movie,
            priority: .low,
            names: [
                "Lord Of The Rings",
                "Harry Potter"
            ]
        ),
        PrioritizedInKindedTitle(
            kind: .series,
            priority: .no,
            names: [
                "Test Book",
                "Test Movie"
            ]
        )
    ]
    
    func getIndex(for priority: Title.Kind.Priority) -> Int {
        prioritizedTitles.firstIndex {
            $0.priority == priority
        }!
    }
}

private extension TitleStore.PrioritizedInKindedTitle {
    init(kind: Title.Kind, priority: Title.Kind.Priority, names: [String]) {
        self.init(
            kind: kind,
            priority: priority,
            titles: names.map { Title(name: $0)}
        )
    }
}
