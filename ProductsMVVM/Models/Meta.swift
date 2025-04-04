//
//  Meta.swift
//  ProductsMVVM
//
//  Created by Lydia Lu on 2025/4/4.
//

import Foundation

// 線上轉檔工具 https://www.json4swift.com
// https://dummyjson.com/products

struct Meta : Codable {
    let createdAt : String?
    let updatedAt : String?
    let barcode : String?
    let qrCode : String?

    enum CodingKeys: String, CodingKey {

        case createdAt = "createdAt"
        case updatedAt = "updatedAt"
        case barcode = "barcode"
        case qrCode = "qrCode"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        createdAt = try values.decodeIfPresent(String.self, forKey: .createdAt)
        updatedAt = try values.decodeIfPresent(String.self, forKey: .updatedAt)
        barcode = try values.decodeIfPresent(String.self, forKey: .barcode)
        qrCode = try values.decodeIfPresent(String.self, forKey: .qrCode)
    }

}

