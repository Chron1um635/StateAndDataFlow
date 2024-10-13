//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by Максим Назаров on 12.10.2024.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
    
    @State private var contentViewVM = ContentViewViewModel()
    @StateObject private var loginViewVM = LoginViewViewModel()
    
    var body: some Scene {
        WindowGroup {
            RootView()
        }
        .environment(contentViewVM)
        .environmentObject(loginViewVM)
    }
}
