//
//  SectionView.swift
//  WatchList
//
//  Created by Cavit KULAKLI on 8.12.2019.
//  Copyright © 2019 Cavit KULAKLI. All rights reserved.
//

import SwiftUI

struct SectionView: View {
    @Binding var prioritizedTitles: TitleStore.PrioritizedTitle
    @Binding var inKindTitles: KindStore.InKindTitle
    
    var body: some View {
        Section (
            header: Text(
                "\(inKindTitles.kind.rawValue.capitalized) Kind"
            )
        ) {
            Section (
                header: Text(
                    "\(prioritizedTitles.priority.rawValue.capitalized) Priority"
                )
            ) {
                ForEach(prioritizedTitles.titles) { index in
                    RowView(title: self.$prioritizedTitles.titles[index])
                }
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
