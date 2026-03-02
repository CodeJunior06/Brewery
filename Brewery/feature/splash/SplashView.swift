//
//  ContentView.swift
//  Brewery
//
//  Created by Santiago Rueda on 14/01/26.
//

import SwiftUI

struct SplashView: View {
    @State var isPresented: String = ""

    var body: some View {
        VStack(spacing: 16) {
            
        
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            Button("Sign In",systemImage: "arrow.up"){
                
            }
            
            TextField("GG", text :$isPresented)
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity).padding().background(Color.cyan)
    }
}

#Preview {
    SplashView()
}
