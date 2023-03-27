//
//  HomeView.swift
//  test0
//
//  Created by Aleksandr Myasoedov on 17.03.2023.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var homeViewModel: HomeViewModel = HomeViewModel()
    @StateObject var flashViewModel: FlashViewModel = FlashViewModel()
    
    
    let columns = [GridItem(.fixed(30))]
    let rows = [GridItem(.flexible())]
    
    var body: some View {
        NavigationStack{
            VStack{
                HStack {
                }
                .padding(.vertical)
                .padding(.horizontal, 25)
                .background(Color.white)
                HStack {
                    HStack {
                        TextField("What are you looking for?", text: .constant(""))
                        Button {
                            
                        } label: {
                            Image(systemName: "magnifyingglass")
                                .font(.title2)
                        }
                    }
                    .frame(width: 300)
                    .padding(.vertical, 10)
                    .padding(.horizontal)
                    .background(
                        Capsule()
                            .fill(.white)
                            .shadow(color: .black.opacity(0.1),
                                    radius: 7)
                            .frame(maxWidth: .infinity))
                }
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(ProductType.allCases, id: \.self) { type in
                            VStack{
                                ZStack{
                                    Circle()
                                        .fill( Color.gray)
                                        .frame(width: 41,
                                               height: 41)
                                        .shadow(color: .black.opacity(0.1),
                                                radius: 10)
                                    Image(type.imageName)
                                        .resizable()
                                        .renderingMode(.template)
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 25,
                                               height: 24)
                                }
                                Text(type.title)
                                    .font(.system(size: 10))
                            }
                        }
                    }
                    .padding(.vertical)
                    .padding(.horizontal, 25)
                }
                HStack {
                    Text("Latest")
                        .font(.system(size: 25)
                            .bold())
                    Spacer()
                    Button {
                        
                    } label: {
                        Text("View all")
                            .font(.system(size: 15))
                            .foregroundColor(Color(.gray))
                    }
                }
                .padding()
                ScrollView(.horizontal){
                    HStack {
                        ForEach(homeViewModel.lastesSales, id: \.self) { item in
                            hotSalesView(hotSalesData: item)
                        }
                    }
                }
                HStack {
                    Text("Flash Sale")
                        .font(.system(size: 25)
                            .bold())
                    Spacer()
                    Button {
                        print("Flash")
                    } label: {
                        Text("View all")
                            .font(.system(size: 15))
                            .foregroundColor(Color(.gray))
                    }
                }
                .padding()
                ScrollView(.horizontal){
                    HStack {
                        ForEach(flashViewModel.flashSales, id: \.self) { flash in
                            flashSalesView(flashSalesData: flash)
                        }
                    }
                }
                          .padding(.horizontal, 13)
                          .padding(.vertical)
                Spacer()
            }
            .onAppear {
                homeViewModel.lastData()
                flashViewModel.flashData()
            }
            
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

extension HomeView {
    @ViewBuilder
    private func hotSalesView(hotSalesData: LastSeller) -> some View {
        HStack {
            VStack(alignment: .leading) {
                
                Text(hotSalesData.category)
                    .font(.system( size: 10))
                    .frame(width: 40,
                           height: 17)
                    .foregroundColor(Color.black)
                    .background(
                        RoundedRectangle(cornerRadius: 9)
                            .fill(Color.white)
                    )
                Text(hotSalesData.name)
                    .font(.system( size: 15))
                    .foregroundColor(Color.black)
                    .bold()
                    .lineLimit(2)
                Text("\(hotSalesData.price)")
                    .font(.system(size: 12)
                        .bold())
                    .padding(.top, 7)
            }
            .padding(.top, 70)
            Spacer()
        }
        .background(
            AsyncImage(url: hotSalesData.imageUrl)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .frame(width: 114,
                       height: 150))
        .frame(width: 114,
               height: 150)
    }
}

extension HomeView {
    @ViewBuilder
    private func flashSalesView(flashSalesData: FlashStore) -> some View {
        ZStack {
            VStack {
                Text(flashSalesData.category)
                    .font(.system( size: 8)
                        .bold())
                    .frame(width: 35,
                           height: 12)
                    .foregroundColor(Color.black)
                    .background(
                        RoundedRectangle(cornerRadius: 9)
                            .fill(Color.white)
                    )
                Text(flashSalesData.name)
                    .font(.system( size: 11))
                    .foregroundColor(Color.black)
                    .bold()
                Text("\(flashSalesData.price)")
                    .font(.system(size: 11).bold())
                    .padding(.top, 7)
            }
        }
        .frame(width: 164, height: 260)
        .background(
            AsyncImage(url: flashSalesData.imageUrl)
                .aspectRatio( contentMode: .fill)
                .clipShape(RoundedRectangle(cornerRadius: 12)))
    }

}
