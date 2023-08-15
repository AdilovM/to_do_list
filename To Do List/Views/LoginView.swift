//
//  LoginView.swift
//  To Do List
//
//  Created by Miras Adilov on 8/10/23.
//
import SwiftUI
struct LoginView: View {
   @StateObject var viewModel = LoginViewViewModel()
   var body: some View {
       NavigationView {
           VStack {
               //Header
               HeaderView(title: "To Do List", subtitle: "Do something",angle: 15, background: .blue)
               
               Form {
                   if !viewModel.errorMessage.isEmpty {
                       Text(viewModel.errorMessage)
                           .foregroundColor(Color.red)
                   }
                   TextField("Email address", text: $viewModel.email)
                       .textFieldStyle(DefaultTextFieldStyle())
                       .autocapitalization(.none)
                       .autocorrectionDisabled()
                   SecureField("Password", text: $viewModel.password)
                       .textFieldStyle(DefaultTextFieldStyle())
                   TLButton(
                        title: "Log In",
                        background: .blue
                   ) {
                       viewModel.login()
                   }
                   .padding()
               }
               .offset(y:-50)
               //Register
               VStack {
                   Text("New user?")
//                   Button() {
//    //                   registration
//                   }
                   NavigationLink("Create an account", destination: RegisterView())
                }
               .padding(.bottom, 50)
               Spacer()
               
           }
       }
   }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
