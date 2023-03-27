//
//  ProfileView.swift
//  test0
//
//  Created by Aleksandr Myasoedov on 17.03.2023.
//

import SwiftUI

struct ProfileView: View {
    private var listNameItem = ["Trade Store","Payment Method","Balance","Trade History","Restore Purchase","Help", "Log out"]
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    Image(systemName: "plus")
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(.gray, lineWidth: 2))
                    Button {
                        print("")
                    } label: {
                        Text("Change photo")
                    }
                    .font(.system(size: 7))
                    .foregroundColor(Color(red: 0.502, green: 0.502, blue: 0.502, opacity: 1))
                    .frame(width: 55, height: 8)
                    .padding(.bottom, 19)
                    Text("Sartia Adhi Pradana")
                        .frame(width: 149.12, height: 11.98)
                        .font(.system(size: 11))
                        .bold()
                        .padding(.bottom, 37.82)
                    Button {
                        print("Screen TabBar and page1")
                    } label: {
                        Text("\(Image(systemName: "icloud.and.arrow.up"))")
                        Text("Upload Item")
                            .multilineTextAlignment(.center)
                            .padding(.trailing, 15 )
                    }
                    .foregroundColor(.white)
                    .frame(width: 290,
                           height: 40)
                    .background(Color(red: 0.306,
                                      green: 0.333,
                                      blue: 0.843))
                    .cornerRadius(10)
                    .padding(.bottom, 1)
                }
                .padding(10)
                VStack( spacing: 25){
                    
                    NavigationLink {
                        SingIn()
                    } label: {
                        HStack{
                            Text("\(  Image("Group 4") )")
                                .frame(width: 40, height: 40)
                                .foregroundColor(Color.black)
                                .background(Color(red: 0.933, green: 0.937, blue: 0.957))
                                .clipShape(Circle())
                            Text("Trade Store")
                                .foregroundColor(Color.black)
                            Spacer()
                            Text("\(   Image(systemName: "chevron.right"))")
                                .foregroundColor(Color.black)
                        }
                    }
                    NavigationLink {
                        SingIn()
                    } label: {
                        HStack{
                            Text("\(  Image("Group 4") )")
                                .frame(width: 40, height: 40)
                                .foregroundColor(Color.black)
                                .background(Color(red: 0.933,
                                                  green: 0.937,
                                                  blue: 0.957))
                                .clipShape(Circle())
                            Text("Payment Method")
                                .foregroundColor(Color.black)
                            
                            Spacer()
                            Text("\(  Image(systemName: "chevron.right") )")
                                .foregroundColor(.black)
                        }
                        //                        .padding(15)
                        
                    }
                    NavigationLink {
                        SingIn()
                    } label: {
                        HStack{
                            Text("\(  Image("Group 4") )")
                                .frame(width: 40, height: 40)
                                .foregroundColor(Color.black)
                                .background(Color(red: 0.933,
                                                  green: 0.937,
                                                  blue: 0.957))
                                .clipShape(Circle())
                            Text("Balance")
                                .foregroundColor(Color.black)
                            
                            Spacer()
                            Text("$ \("1593")")
                                .foregroundColor(.black)
                        }
                    }
                    NavigationLink {
                        SingIn()
                    } label: {
                        HStack{
                            Text("\(  Image("Group 4") )")
                                .frame(width: 40, height: 40)
                                .foregroundColor(Color.black)
                                .background(Color(red: 0.933,
                                                  green: 0.937,
                                                  blue: 0.957))
                                .clipShape(Circle())
                            Text("Trade History")
                                .foregroundColor(Color.black)
                            
                            Spacer()
                            Text("\(  Image(systemName: "chevron.right") )")
                                .foregroundColor(.black)
                        }
                    }
                    NavigationLink {
                        SingIn()
                    } label: {
                        HStack{
                            Text("\(  Image("refresh 1") )")
                                .frame(width: 40, height: 40)
                                .foregroundColor(Color.black)
                                .background(Color(red: 0.933,
                                                  green: 0.937,
                                                  blue: 0.957))
                                .clipShape(Circle())
                            Text("Restore Purchase")
                                .foregroundColor(.black)
                            
                            Spacer()
                            Text("\(  Image(systemName: "chevron.right") )")
                                .foregroundColor(.black)
                        }
                    }
                    NavigationLink {
                        SingIn()
                    } label: {
                        HStack{
                            Text("\(  Image(systemName: "questionmark.circle") )")
                                .frame(width: 40, height: 40)
                                .foregroundColor(Color.black)
                                .background(Color(red: 0.933,
                                                  green: 0.937,
                                                  blue: 0.957))
                                .clipShape(Circle())
                            Text("Help")
                                .foregroundColor(.black)
                            Spacer()
                        }
                    }
                    NavigationLink(destination: SingIn(), label: {
                        HStack{
                            Text("\(  Image(systemName: "arrow.right.to.line") )")
                                .frame(width: 40, height: 40)
                                .foregroundColor(.black)
                                .background(Color(red: 0.933,
                                                  green: 0.937,
                                                  blue: 0.957))
                                .clipShape(Circle())
                            Text("Log out")
                                .foregroundColor(.black)
                            Spacer()
                        }
                    })
                    
                }
                .padding(20)
            }
            .navigationTitle("profile")
        }
    }
}
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
