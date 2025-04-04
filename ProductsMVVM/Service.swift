//
//  Service.swift
//  ProductsMVVM
//
//  Created by Lydia Lu on 2025/4/4.
//

import Foundation

protocol ServiceProtocol {
    func getWeatherData(baseUrl: String)
}

class Service: ServiceProtocol {
    
    // https://jjeremy-xue.medium.com/swift-來接個-api-吧-串接-api-解析-json-b9ea320f674e
    private let baseURL = "https://dummyjson.com/products"
    
    func getWeatherData(baseUrl: String) {

        if let url = URL(string: baseURL) {

            URLSession.shared.dataTask(with: url) { (data, response, error) in
                if let error = error {
                    print("Error: \(error.localizedDescription)")
                  // 取得 response 和 data
                } else if let response = response as? HTTPURLResponse,let data = data {
                    print("Status code: \(response.statusCode)")
                    let decoder = JSONDecoder()
                    if let baseData = try? decoder.decode(BaseData.self, from: data) {
                        print("============== data ==============")
                        print(baseData)
                        print("============== data ==============")
                    }
                }
                }.resume()
        } else {
            print("Invalid URL.")
        }
    }
    
}
