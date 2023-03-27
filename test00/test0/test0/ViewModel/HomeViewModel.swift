//
//  HomeViewModel.swift
//  test0
//
//  Created by Aleksandr Myasoedov on 25.03.2023.
//



import Foundation

import UIKit

class HomeViewModel: ObservableObject {
    //    @Published var productCarousel: Int = 0
    @Published var lastesSales: [LastSeller] = [LastSeller]()
    
    @Published var image: UIImage = UIImage()
    
    func lastData() {
        let lastURL = "https://run.mocky.io/v3/cc0071a1-f06e-48fa-9e90-b1c2a61eaca7"
        guard let urll = URL(string: lastURL) else { print("Invalid URL"); return }
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: urll) { [weak self] data, response, error in
            if error != nil {
                print("Request error: \(error?.localizedDescription)")
                return
            }
            if let lData = data {
                if let lastModel = self?.parseJSON(lData) {
                    DispatchQueue.main.async {
                        self?.lastesSales = lastModel.latest
                    }
                }
            }
        }
        task.resume()
    }
    
    // method to parse JSON
    private func parseJSON(_ data: Data) -> Catalog? {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        do {
            let decodedData = try decoder.decode(Catalog.self, from: data)
            
            return decodedData
            
        } catch {
            
            print("Parsing JSON error: \(error)")
            return nil
        }
    }
}

class FlashViewModel: ObservableObject {
    //    @Published var productCarousel: Int = 0
    @Published var flashSales: [FlashStore] = [FlashStore]()
    
    @Published var image: UIImage = UIImage()
    
    func flashData() {
        let flashURL = "https://run.mocky.io/v3/a9ceeb6e-416d-4352-bde6-2203416576ac"
        guard let url = URL(string: flashURL) else { print("Invalid URL"); return }
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { [weak self] data, response, error in
            if error != nil {
                print("Request error: \(error?.localizedDescription)")
                return
            }
            if let safeData = data {
                if let flashModel = self?.parseJSON(safeData) {
                    DispatchQueue.main.async {
                        self?.flashSales = flashModel.flashSale
                    }
                }
            }
        }
        
        task.resume()
    }
    
    // method to parse JSON
    private func parseJSON(_ data: Data) -> Catalogflash? {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        do {
            let decodedData = try decoder.decode(Catalogflash.self, from: data)
            return decodedData
        } catch {
            print("Parsing JSON error: \(error)")
            return nil
        }
    }
}
