//
//  ContentView.swift
//  WatchList
//
//  Created by Cavit KULAKLI on 3.12.2019.
//  Copyright © 2019 Cavit KULAKLI. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var titleStore: TitleStore
    
    @State var modalIsPresented = false
    
    var body: some View {
            Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView( titleStore: TitleStore() )
    }
}
