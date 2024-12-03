//
//  ContentView.swift
//  Apprstists
//
//  Created by Alejandro Agudelo on 26/11/24.
//

import SwiftUI

struct ContentView: View {
    
    let repo = DiscogsRepository()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .onAppear(perform: {
            Task {
                await repo.searchArtist(searchToken: "stratovarius")
            }

        })
    }
        
}

#Preview {
    ContentView()
}
