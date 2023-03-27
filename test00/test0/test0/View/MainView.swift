//
//  MainView.swift
//  test0
//
//  Created by Aleksandr Myasoedov on 17.03.2023.
//

import SwiftUI

struct MainView: View {
//    @Binding var selectedTab: Tab
//       private var fillImage: String {
//           selectedTab.rawValue + ".fill"
//       }
    @State  var selection: Int
    
    var body: some View {
        NavigationStack{
            TabView(selection: $selection){
                HomeView()
                    .tabItem{
                        Label("", image: "Group 1")
                    }
                    .tag(0)
                FavoriteView()
                    .tabItem {
                    Label("", image: "heart")
                }
                    .tag(1)
                BasketView()
                    .tabItem {
                        Label("", image: "Group 6")
                    }
                    .tag(2)
                MassegeView()
                    .tabItem {
                        Label("", image: "message")
                    }
                    .tag(3)
                ProfileView()
                    .tabItem {
                        Label("", image: "Group 7")
                    }
                    .tag(4)
            }
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                } label: {
                    Image("Clippathgroup")
                }
            }
            ToolbarItem {
                HStack{
                    Text("Trade by")
                        .font(.system(size: 18).bold())
                    Text("bata")
                        .font(.system(size: 15).bold())
                        .foregroundColor(Color(red: 0.306,
                                               green: 0.333,
                                               blue: 0.843))
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                VStack{
                    Image(systemName: "plus")
                        .frame(width: 25, height: 25)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(.gray, lineWidth: 2))
                    Button {
                        print("")
                    } label: {
                        HStack{
                            Text("Location")
                            Image(systemName: "chevron.down" )
                        }
                        .foregroundColor(.gray)
                    }
                }
                .padding(.leading, 30)
            }
        }
        
        .navigationBarBackButtonHidden()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(selection: 4)
    }
}
