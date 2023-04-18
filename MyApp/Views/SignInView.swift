//
//  SignInView.swift
//  MyApp
//
//  Created by Students on 16.12.2022.
//

import SwiftUI

struct SignInView: View {
    
    @State private var selectedTab: SelectedMode = .createAccount

    @State private var userName = ""
    @State private var email = ""
    @State private var password = ""

    enum SelectedMode {
        case createAccount, logIn
    }
    
    @State private var showAlert = false
    var body: some View {
        NavigationView{
            VStack {
                
                selectPicker
                
//                Logo()
//                    .padding(.top, 30)
                
                textBlock
                    .padding(30)
            
                VStack(alignment: .leading, spacing: 2) {
                        SignInfo(
                            textField: "Enter you name here",
                            imageName: "person",
                            binding: $userName)
                    
                    if selectedTab == .createAccount {
                        SignInfo(
                            textField: "Enter you email here",
                            imageName: "envelope",
                            binding: $email)
                                // delete capitalize first leter and other features
                    }
                    
                        SignInfo(
                            textField: "Enter you password here",
                            imageName: "key",
                            binding: $password)
                    }
                .padding(.top, 20)
            
                
                signInButton
                    .padding(.top, selectedTab == .createAccount ? 40 : 96)
                
                NavigationLink("Base", destination: MainTabView())
               
                Spacer()
            }
            .navigationTitle(selectedTab == .createAccount ? "Create account" : "Log In")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

// MARK: COMPONENTS

extension SignInView {
    
    // @Binding var selectedTab: SignInView.SelectedMode

    private var selectPicker: some View {
        Picker("_", selection: $selectedTab) {
            Text("Create account")
                .tag(SignInView.SelectedMode.createAccount)
            Text("Log IN")
                .tag(SignInView.SelectedMode.logIn)
        }
        .pickerStyle(.segmented)
    }
    
    private var textBlock: some View  {
        HStack {
            VStack(alignment: .leading) {
                Text(selectedTab == .createAccount ? "Welcome!" : "Welcome back!")
                        .font(.largeTitle)
                Text(selectedTab == .createAccount ? "We happy see you here" : "Sign in to continue")
                        .font(.caption)
            }
            .padding(.horizontal)
            
            Spacer()
        }
    }
    
    private var signInButton: some View {
        Button {
           //NavigationLink("", destination: WelcomeView())
        } label: {
            Text(selectedTab == .createAccount ? "Create account" : "Log In")
                .font(.largeTitle)
                .frame(maxWidth: .infinity)
                
//            Label("Sign UP", systemImage: "checkmark.circle")
        }
        .padding(.horizontal, 30)
        .buttonStyle(.borderedProminent)
        .controlSize(.large)
    }
}

struct Logo : View {
    var body: some View {
        HStack {
            Image(systemName: "circle.grid.2x1")
                .resizable()
                .scaledToFit()
                .frame(width: 40,  height: 40)
            .foregroundColor(.accentColor)
            Image(systemName: "circle.grid.2x1")
                .resizable()
                .scaledToFit()
                .frame(width: 40,  height: 40)
                .foregroundColor(.accentColor)
        }
    }
}

// MARK: FUNCTIONS

extension SignInView {

//    func signUpIsValid() {
//        if userName.count <= 3 {
//            getAlert(title: "Too short", message: "Enter you name, please")
//        } else if email.count <= 5 {
//            getAlert(title: "Too short", message: "Enter you email, please")
//        }
//    }
//
//        enum ErrorPassword: Error {
//            case simple
//            case short
//        }
//
//    func checkPassword(password: String) throws -> String {
//        if password == "1234" || password == "0000" || password == "1111" || password == "qwerty" {
//            throw ErrorPassword.simple
//        } else if password.count <= 4 {
//            throw ErrorPassword.short
//        } else {
//            return "Good password!"
//        }
//    }
//
//    do {
//        let result = try checkPassword(password: password)
//        signInButton = true
//    } catch ErrorPassword.short {
//        getAlert(title: "Too short", message: "Enter more complex password, please")
//    } catch ErrorPassword.simple {
//        getAlert(title: "Too simple", message: "Rewrite your password, please")
//    }
//
//
//    func getAlert(title: String, message: String) -> Alert {
//        showAlert.toggle()
//        return Alert(title: Text(title), message: Text(message))
//    }
}


struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
            
    }
}

