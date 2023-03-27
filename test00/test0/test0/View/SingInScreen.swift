//
//  ContentView.swift
//  test0
//
//  Created by Aleksandr Myasoedov on 16.03.2023.
//


import SwiftUI

struct SingIn: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""

    var body: some View {
        NavigationStack{
            VStack {
                Text("Sign in")
                    .frame(width: 88,
                           height: 25)
                    .font(.system(size: 27))
                    .bold()
                    .shadow(color: .black.opacity(0.25),
                            radius: 4)
                    .padding(.bottom, 77)
                
                TextField("First Name", text: $firstName)
                    .frame(width: 289,
                           height: 29)
                    .multilineTextAlignment(.center)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .padding(.bottom, 35)
                
                TextField("Last Name", text: $firstName)
                    .frame(width: 289,
                           height: 29)
                    .multilineTextAlignment(.center)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .padding(.bottom, 35)
                
                TextField("Email", text: $firstName)
                    .frame(width: 289,
                           height: 29)
                    .multilineTextAlignment(.center)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .padding(.bottom, 35)
                
                NavigationLink(destination: MainView(selection: 0), label: {
                    Text("Sign In")
                })
                .foregroundColor(.white)
                .frame(width: 300,
                       height: 50)
                .background(Color(red: 0.306,
                                  green: 0.333,
                                  blue: 0.843))
                .cornerRadius(10)
                .padding(.bottom, 1)
                HStack{
                    Text("Already have a account?")
                        .font(.system(size: 11))
                        .foregroundColor(.black)
//                        .sha
                        .frame(width: 130,
                               height: 10)
                    NavigationLink(destination: LoginScreen()) {
                        Text("Log in")
                            .font(.system(size: 11))
                            .padding(.leading, -5)
                    }
                    Spacer(minLength: 0)
                }
                .padding(.top)
                .padding(.leading, 50)
                .padding(.bottom, 50)
                VStack{
                    HStack{
                        Text("G")
                            .bold()
                        Button {
                            print("1 ")
                        } label: {
                            Text("Sing in with Google")
                                .foregroundColor(.black)
                        }
                    }
                    .padding(40)
                    HStack{
                        Image(systemName: "apple.logo")
                        Button {
                            print(" 2")
                        } label: {
                            Text("Sing in with Apple")
                                .foregroundColor(.black)
                        }
                    }
                }
            }
            .padding()
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SingIn()
    }
}
