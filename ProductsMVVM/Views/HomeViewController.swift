//
//  ViewController.swift
//  ProductsMVVM
//
//  Created by Lydia Lu on 2025/4/4.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    private var baseData : [BaseData] = []
    private let service: ServiceProtocol
    
    init(baseData: [BaseData], service: ServiceProtocol) {
        self.baseData = baseData
        self.service = service
        super.init()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("BaseData == \(baseData)")
        service.getWeatherData(baseUrl: "https://dummyjson.com/products")
    }


}

