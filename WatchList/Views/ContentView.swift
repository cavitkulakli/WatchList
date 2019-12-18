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
            NavigationView {
                List {
                    ForEach(titleStore.prioritizedInKindedTitles) { index in
                        SectionView(prioritizedInKindedTitle: self.$titleStore.prioritizedInKindedTitles[index])
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
        ContentView( titleStore: TitleStore() )
    }
}
