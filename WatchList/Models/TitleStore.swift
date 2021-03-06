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
            kind: .Books,
            priority: .medium,
            names: [
                "Lord Of The Rings",
                "Harry Potter"
            ]
        ),
        PrioritizedInKindedTitle(
            kind: .Movies,
            priority: .medium,
            names: [
                "HellBoy"
            ]
        ),
        PrioritizedInKindedTitle(
            kind: .Movies,
            priority: .low,
            names: [
                "Lord Of The Rings",
                "Harry Potter"
            ]
        ),
        PrioritizedInKindedTitle(
            kind: .Series,
            priority: .no,
            names: [
                "Test Book",
                "Test Movie"
            ]
        )
    ]
    
    func getIndex(for kind: Title.Kind) -> Int {
        prioritizedInKindedTitles.firstIndex {
            $0.kind == kind
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
