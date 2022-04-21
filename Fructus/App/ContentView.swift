//
//  ContentView.swift
//  Fructus
//
//  Created by Zeyad Badawy on 18/04/2022.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: PROPERTIES
    @State private var isSettingsShown = false
    let fruits:[Fruit] = fruitsData
    
    
    //MARK: BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits) { item in
                    NavigationLink(destination:FruitDetailsView(fruit: item)) {
                        FruitRowView(fruit: item)
                    }
                }
            }//: List
            .listStyle(.plain)
            .navigationTitle("Fruits")
            .toolbar(content: {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button {
                        isSettingsShown = true
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    }
                    .sheet(isPresented: $isSettingsShown) {
                        SettingsView()
                    }
                }
            })

            
        }//: NavigationView
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
//MARK: PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
