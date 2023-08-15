//
//  ToDoListItemViewViewModel.swift
//  To Do List
//
//  Created by Miras Adilov on 8/10/23.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class ToDoListItemViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    init() {
        
    }
    func toggleIsDone(item: ToDoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
    
}
