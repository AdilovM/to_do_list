//
//  ToDoListViewViewModel.swift
//  To Do List
//
//  Created by Miras Adilov on 8/10/23.
//

//

import Foundation
import FirebaseFirestore

class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    ///  Delete todo list item
    /// - Parameter id: item id to delete
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}

