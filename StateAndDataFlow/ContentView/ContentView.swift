//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by Максим Назаров on 12.10.2024.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(ContentViewViewModel.self) private var contentViewVM
    @EnvironmentObject private var loginViewVM: LoginViewViewModel
    
    var body: some View {
        VStack {
            Text("Hi, \(loginViewVM.user.name)!")
                .padding(.top, 100)
                .font(.largeTitle)
            
            Text(contentViewVM.counter.formatted())
                .font(.largeTitle)
                .padding(.top, 100)
            
            Spacer()
            
            ButtonView(startButton: true)
            
            Spacer()
            
            ButtonView(startButton: false)
        }
    }
}

#Preview {
    ContentView()
        .environment(ContentViewViewModel())
        .environmentObject(LoginViewViewModel())
}
