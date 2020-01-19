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
    @State var pickerSelection: Title.Kind = .Series    
    
    var body: some View {
        NavigationView {
            VStack {
                Picker("Kinds", selection: $pickerSelection) {
                    ForEach(Title.Kind.allCases, id: \.self) { kind in
                        Text(kind.rawValue).tag(kind)
                            .navigationBarTitle("\(self.pickerSelection.rawValue)")
                    }
                }.pickerStyle(SegmentedPickerStyle())
                List {
                    ForEach(titleStore.prioritizedInKindedTitles) { index in
                        Group {
                            if(self.titleStore.prioritizedInKindedTitles[index].kind == self.pickerSelection) {
                            SectionView(prioritizedInKindedTitle: self.$titleStore.prioritizedInKindedTitles[index])
                            }
                        }
                    }
                }
                .listStyle( GroupedListStyle())
            }
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
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView( titleStore: TitleStore() )
    }
}
