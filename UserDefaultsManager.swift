//
//  UserDefaultsManager.swift
//  ToDO
//
//  Created by 김기현 on 2023/08/28.
//

import Foundation

class UserDefaultsManager {
    static let shared = UserDefaultsManager()
    
    private let userDefaults = UserDefaults.standard
    private let savedItemsKey = "savedItems"
    
    func saveItems(_ items: [String]) {
        userDefaults.set(items, forKey: savedItemsKey)
    }
    
    func loadItems() -> [String] {
        return userDefaults.array(forKey: savedItemsKey) as? [String] ?? []
    }
}
