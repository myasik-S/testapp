//
//  Product.swift
//  test0
//
//  Created by Aleksandr Myasoedov on 25.03.2023.
//

import Foundation

struct Catalog: Codable{
    let latest: [LastSeller]
}
struct Catalogflash: Codable{
    let flashSale: [FlashStore]
}

struct LastSeller: Codable, Hashable {
    let category: String
    let name: String
    let price: Double
    let imageUrl: String
}

struct FlashStore: Codable, Hashable {
    let price: Int
    let discount: Int
    let category: String
    let name: String
    let imageUrl: String
}
enum ProductType: CaseIterable {
    case phone
    case headPhone
    case games
    case cars
    case furniture
    case kids
    
    var title: String {
        switch self {
        case .phone:
            return "Phones"
        case .headPhone:
            return "HeadPhones"
        case .games:
            return "Games"
        case .cars:
            return "Cars"
        case .furniture:
            return "Furniture"
        case .kids:
            return "Kids"
        }
    }
    
    var imageName: String {
        switch self {
        case .phone:
            return "phone"
        case .headPhone:
            return "headphone"
        case .games:
            return "gamepad"
        case .cars:
            return "cars"
        case .furniture:
            return "furniture"
        case .kids:
            return "kids"
        }
    }
}
