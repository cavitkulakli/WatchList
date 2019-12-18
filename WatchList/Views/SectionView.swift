//
//  SectionView.swift
//  WatchList
//
//  Created by Cavit KULAKLI on 8.12.2019.
//  Copyright © 2019 Cavit KULAKLI. All rights reserved.
//

import SwiftUI

struct SectionView: View {
    @Binding var prioritizedInKindedTitle: TitleStore.PrioritizedInKindedTitle
    
    var body: some View {
        Section (
            header: Text(
                "\(prioritizedInKindedTitle.kind.rawValue.capitalized) Kind"
            )
        ) {
            Section (
                header: Text(
                    "\(prioritizedInKindedTitle.priority.rawValue.capitalized) Priority"
                )
            ) {
//                ForEach(prioritizedInKindedTitle.titles) { title in
//                    RowView(title: title)
//                }
                .onMove { sourceIndices, destinationIndex in
                    self.prioritizedTitles.titles.move(fromOffsets: sourceIndices, toOffset: destinationIndex)
                }
                .onDelete { indexSet in
                    self.prioritizedTitles.titles.remove(atOffsets: indexSet)
                }
            }
        }
    }
}
