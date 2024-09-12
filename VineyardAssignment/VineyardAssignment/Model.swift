//
//  Model.swift
//  VineyardAssignment
//
//  Created by Rahul on 9/5/24.
//

import SwiftUI

@Observable
class ItemList: Identifiable {
    var id: UUID = .init()
    var name: String
    var itemList: [Item]
    // TODO: What properties would ItemList have?
    
    init(name: String) {
        self.name = name
        self.itemList = []
    }

    
    func addItem(_ name: String) {
        // TODO: Create an Item object with the given name, and add it to this ItemList.
    }
    
    func toggleItemAsCompleted(_ item: Item) {
        // TODO: Toggle the given Item as complete/incomplete in this ItemList.
    }
    struct Item: Identifiable {
        // TODO: What properties would Item have?
        var id: UUID = .init()
        var name: String
        var isChecked: Bool?
        init(name: String) {
            self.name = name
            self.isChecked = false
        }
    }
    
}
struct Person {
    var email: String
    var password: String
    init (email: String, password: String) {
        self.email = email
        self.password = password
    }
}

