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
    @ObservedObject var kindStore: KindStore
    
    @State var modalIsPresented = false
    
    var body: some View {
            NavigationView {
                List {
                    ForEach(titleStore.prioritizedTitles) { index in
                        SectionView(prioritizedTitles: self.$titleStore.prioritizedTitles[index], inKindTitles: self.$kindStore.inKindTitle[index])
                    }
                }
                .listStyle( GroupedListStyle())
                .navigationBarTitle("Titles")
                .navigationBarItems(
                    leading: EditButton(),
                    trailing:
                    Button(
                        action: { self.modalIsPresented = true }
                    ) {
                        Image(systemName: "plus")
                    }
                )
            }
//            .sheet(isPresented: $modalIsPresented) {
//                NewTaskView( taskStore: self.taskStore )
//            }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView( titleStore: TitleStore(), kindStore: KindStore() )
    }
}
