//
//  ContentView.swift
//  Socialcademy
//
//  Created by Yasin Şükrü Tan on 13.12.2022.
//

import SwiftUI

struct PostsList: View {
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
        PostsList()
    }
}
