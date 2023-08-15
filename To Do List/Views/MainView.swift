//
//  MainView.swift
//  To Do List
//
//  Created by Miras Adilov on 8/10/23.
//

import SwiftUI

struct MainView: View {
    //    state helps to manage changes and trigger updates to UI
    //    mutable state for todos list and newTodo str
    //    main content of app's view
    @StateObject var viewModel = MainViewViewModel()
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            //signed in
            // for now lets go with ToDoListView
            accountView
        } else {
            LoginView()
        }
    }
    @ViewBuilder
    var accountView: some View {
        TabView {
            ToDoListView(userId: viewModel.currentUserId)
                .tabItem( {
                    Label("Home", systemImage: "house")
                })
            ProfileView()
                .tabItem( {
                    Label("Profile", systemImage: "person.circle")
                })
        }
    }
    
}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
        }
}

