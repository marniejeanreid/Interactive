//
//  ContentView.swift
//  Interactive
//
//  Created by scholar on 4/7/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = ""
    @State private var titleText = "What is your name?"    
    var body: some View {
        VStack(spacing: 100) {
            Text(titleText)
                .font(.title)
            TextField("Type name...", text: $name)
                .font(.title)
                .multilineTextAlignment(.center)
                .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            
            Button("Submit Name") {
               titleText = "Welcome, \(name)!"
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
