//
//  RegisterView.swift
//  To Do List
//
//  Created by Miras Adilov on 8/10/23.
//

import SwiftUI
struct RegisterView: View {
    @State var viewModel = RegisterViewViewModel()
    var body: some View {
        VStack {
           // Header
            HeaderView(title: "Registration",
                       subtitle: "Do something",
                       angle: -15,
                       background: .orange)
            
            Form {
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                TLButton(
                     title: "Create Account",
                     background: .orange
                ) {
                  // signup action
                    viewModel.signup()
                }
                .padding()
            }
            .offset(y: -50)
     
        }
 
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
