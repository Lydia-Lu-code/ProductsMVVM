//
//  Dimensions.swift
//  ProductsMVVM
//
//  Created by Lydia Lu on 2025/4/4.
//

import Foundation

// 線上轉檔工具 https://www.json4swift.com
// https://dummyjson.com/products

struct Dimensions : Codable {
    let width : Double?
    let height : Double?
    let depth : Double?

    enum CodingKeys: String, CodingKey {

        case width = "width"
        case height = "height"
        case depth = "depth"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        width = try values.decodeIfPresent(Double.self, forKey: .width)
        height = try values.decodeIfPresent(Double.self, forKey: .height)
        depth = try values.decodeIfPresent(Double.self, forKey: .depth)
    }

}
