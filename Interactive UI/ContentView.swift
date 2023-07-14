//
//  ContentView.swift
//  Interactive UI
//
//  Created by Zoe Kalafatis on 2023-07-13.
//

import SwiftUI

struct ContentView: View {
    
    @State private var name = " "
    @State private var textTitle = "What is your name?"
    
    var body: some View {
        VStack {
            Text(textTitle)
                .font(.title)
            TextField("Type name here...", text: $name)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .border(/*@START_MENU_TOKEN@*/Color.gray/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            Button("Enter") {
                textTitle = "Welcome, \(name) !"
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.green)
        } .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
