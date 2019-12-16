//
//  KindStore.swift
//  WatchList
//
//  Created by Cavit KULAKLI on 16.12.2019.
//  Copyright © 2019 Cavit KULAKLI. All rights reserved.
//

import Combine

class KindStore: ObservableObject {
    
    @Published var inKindTitle = [
        InKindTitle(
            kind: .movie,
            names: [
                "Lord Of The Rings",
                "Harry Potter",
                "Test Movie"
            ]
        ),
        InKindTitle(
            kind: .book,
            names: [
                "Lord Of The Rings",
                "Harry Potter",
                "Test Book"
            ]
        ),
        InKindTitle(
            kind: .series,
            names: [
                "Lord Of The Rings",
                "Harry Potter"
            ]
        )
        
    ]
    
    func getIndex(for kind: Title.Kind) -> Int {
        inKindTitle.firstIndex {
            $0.kind == kind
        }!
    }
}

private extension KindStore.InKindTitle {
    init(kind: Title.Kind, names: [String]) {
        self.init(
            kind: kind,
            titles: names.map { Title(name: $0)}
        )
    }
}
