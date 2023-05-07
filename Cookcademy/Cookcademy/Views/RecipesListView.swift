//
//  ContentView.swift
//  Cookcademy
//
//  Created by Batuhan Ayırtman on 07.05.23.
//

import SwiftUI

struct RecipesListView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesListView()
    }
}
