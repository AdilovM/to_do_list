//
//  MainViewViewModel.swift
//  To Do List
//
//  Created by Miras Adilov on 8/10/23.
//
import FirebaseAuth
import Foundation
class MainViewViewModel: ObservableObject {
    @Published var currentUserId: String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    init() {
        self.handler = Auth.auth().addStateDidChangeListener { [weak self] Auth, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
    
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}
