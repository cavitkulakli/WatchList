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
                ForEach(prioritizedInKindedTitle.titles) { index in
                    RowView(title: self.$prioritizedInKindedTitle.titles[index])
                }
                .onMove { sourceIndices, destinationIndex in
                    self.prioritizedInKindedTitle.titles.move(fromOffsets: sourceIndices, toOffset: destinationIndex)
                }
                .onDelete { indexSet in
                    self.prioritizedInKindedTitle.titles.remove(atOffsets: indexSet)
                }
            }
        }
    }
}
