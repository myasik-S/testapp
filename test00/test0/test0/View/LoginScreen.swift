//
//  LoginScreen.swift
//  test0
//
//  Created by Aleksandr Myasoedov on 16.03.2023.
//





import SwiftUI

struct LoginScreen: View {
    @State private var selectedTab = 0
    @State private var firstName = ""
    @State private var password = ""
    @State private var isPasswordEye: Bool = false
    @State private var isEmailValid : Bool = false
    @State var goWhenTrue: Bool = false

    var body: some View {
       
            VStack{
                Text("Welcome back")
                    .frame(width: 196,
                           height: 20)
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
                
                ZStack(alignment: .trailing){
                    Group{
                        if isPasswordEye {
                            SecureField("Password", text: $password)
                        } else {
                            TextField("Password", text: $password)
                        }
                    }
                    .multilineTextAlignment(.center)
                    Button(action: {
                        isPasswordEye.toggle()
                    }) {
                        Image(systemName: self.isPasswordEye ? "eye.slash" : "eye")
                            .accentColor(.gray)
                    }
                }
                .frame(width: 289, height: 29)
                .background(Color.black.opacity(0.05))
                .cornerRadius(10)
                .padding(.bottom, 99)
                
                NavigationLink(destination: MainView(selection: 0), label: {
                    Text("Log in")
                })
                .foregroundColor(.white)
                .frame(width: 300,
                       height: 50)
                .background(Color(red: 0.306,
                                  green: 0.333,
                                  blue: 0.843))
                .cornerRadius(10)
            }
            .frame(width: 300)
            .padding()
        }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
