//
//  TitleStore.KindedTitle.swift
//  WatchList
//
//  Created by Cavit KULAKLI on 8.12.2019.
//  Copyright © 2019 Cavit KULAKLI. All rights reserved.
//

import Combine

extension KindStore {
    
    struct InKindTitle {
        let kind: Title.Kind
        var titles: [Title]
    }
    
}

extension KindStore.InKindTitle: Identifiable {
    var id: Title.Kind { kind }
}
