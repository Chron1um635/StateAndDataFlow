//
//  StorageManager.swift
//  StateAndDataFlow
//
//  Created by Максим Назаров on 12.10.2024.
//

import SwiftUI


final class StorageManager {
    static let shared = StorageManager()
    
    @AppStorage("user") private var userData: Data?
    
    private init() {}
    
    func fetchUser() -> User {
        guard let userData else { return User() }
        let user = try? JSONDecoder().decode(User.self, from: userData)
        return user ?? User()
    }
    
    func save(user: User) {
        userData = try? JSONEncoder().encode(user)
    }
    
    func deleteUser() {
        userData = nil
    }
}
