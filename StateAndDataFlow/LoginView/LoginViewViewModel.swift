//
//  LoginViewViewModel.swift
//  StateAndDataFlow
//
//  Created by Максим Назаров on 12.10.2024.
//

import Foundation


final class LoginViewViewModel: ObservableObject {
    @Published var user = User()
    
    private let storeManager = StorageManager.shared
    
    var validLength: Bool {
        user.name.count >= 3
    }
    
    func logIn() {
        user.isLoggedIn.toggle()
        storeManager.save(user: user)
    }
    
    func logOut() {
        user.name = ""
        user.isLoggedIn.toggle()
        storeManager.deleteUser()
    }
}
