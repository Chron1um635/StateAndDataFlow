//
//  RootView.swift
//  StateAndDataFlow
//
//  Created by Максим Назаров on 12.10.2024.
//

import SwiftUI

struct RootView: View {
    
    @EnvironmentObject private var loginViewVM: LoginViewViewModel
    
    var body: some View {
        if loginViewVM.user.isLoggedIn {
            ContentView()
        } else {
            LoginView()
        }
    }
}

#Preview {
    RootView()
        .environmentObject(LoginViewViewModel())
}
