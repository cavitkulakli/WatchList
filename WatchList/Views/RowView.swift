//
//  RowView.swift
//  WatchList
//
//  Created by Cavit KULAKLI on 8.12.2019.
//  Copyright © 2019 Cavit KULAKLI. All rights reserved.
//

import SwiftUI

struct RowView: View {
    
    @Binding var title: Title
    
    let checkmark = Image(systemName: "checkmark")
    
    var body: some View {
        NavigationLink(
            destination: TitleEditingView( title: $title )
        ) {
            if title.done {
                checkmark
            } else {
                checkmark.hidden()
            }
            Text(title.name)
                .strikethrough(title.done)
        }
    }
}


struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(title: .constant( Title(name: "To Do") ) )
    }
}
