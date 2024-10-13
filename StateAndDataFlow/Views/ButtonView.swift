//
//  ButtonView.swift
//  StateAndDataFlow
//
//  Created by Максим Назаров on 13.10.2024.
//

import SwiftUI

struct ButtonView: View {
    
    @Environment(ContentViewViewModel.self) private var contentViewVM
    @EnvironmentObject private var loginViewVM: LoginViewViewModel
    
    var startButton: Bool
    
    var body: some View {
        Button (action: startButton ? contentViewVM.startTimer : loginViewVM.logOut) {
            Text(startButton ? contentViewVM.buttonTitle : "LogOut")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(.white)
        }
        .frame(width: 200, height: 60)
        .background(startButton ? .red : .blue)
        .clipShape(.rect(cornerRadius: 20))
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.black, lineWidth: 4)
        )

    }
}

#Preview {
    ButtonView(startButton: false)
        .environment(ContentViewViewModel())
        .environmentObject(LoginViewViewModel())
}
