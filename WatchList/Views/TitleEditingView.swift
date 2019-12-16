//
//  TitleEditingView.swift
//  WatchList
//
//  Created by Cavit KULAKLI on 16.12.2019.
//  Copyright © 2019 Cavit KULAKLI. All rights reserved.
//

import SwiftUI

struct TitleEditingView: View {
    @Binding var title: Title
    
    var body: some View {
        Form {
            TextField("Name", text: $title.name)
            Toggle("Done", isOn: $title.done)
        }
    }
}


struct TitleEditingView_Previews: PreviewProvider {
    static var previews: some View {
        TitleEditingView(
            title: .constant ( Title( name: "To Do" ) )
        )
    }
}
