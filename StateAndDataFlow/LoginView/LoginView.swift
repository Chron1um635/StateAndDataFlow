//
//  LoginView.swift
//  StateAndDataFlow
//
//  Created by Максим Назаров on 12.10.2024.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject private var loginViewVM: LoginViewViewModel
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name", text: $loginViewVM.user.name)
                    .multilineTextAlignment(.center)
                    .frame(width: 150)
                
                Text(loginViewVM.user.name.count.formatted())
                    .foregroundStyle(loginViewVM.validLength ? .green : .red)
            }
            
            Button(action: login) {
                Label("OK", systemImage: "checkmark.circle")
            }
            .disabled(!loginViewVM.validLength)
        }
    }
    
    private func login() {
        if !loginViewVM.user.name.isEmpty {
            loginViewVM.logIn()
        }
    }
}

#Preview {
    LoginView()
        .environmentObject(LoginViewViewModel())
}
