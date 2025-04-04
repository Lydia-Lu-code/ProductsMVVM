//
//  Reviews.swift
//  ProductsMVVM
//
//  Created by Lydia Lu on 2025/4/4.
//

import Foundation

// 線上轉檔工具 https://www.json4swift.com
// https://dummyjson.com/products

struct Reviews : Codable {
    let rating : Int?
    let comment : String?
    let date : String?
    let reviewerName : String?
    let reviewerEmail : String?

    enum CodingKeys: String, CodingKey {

        case rating = "rating"
        case comment = "comment"
        case date = "date"
        case reviewerName = "reviewerName"
        case reviewerEmail = "reviewerEmail"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        rating = try values.decodeIfPresent(Int.self, forKey: .rating)
        comment = try values.decodeIfPresent(String.self, forKey: .comment)
        date = try values.decodeIfPresent(String.self, forKey: .date)
        reviewerName = try values.decodeIfPresent(String.self, forKey: .reviewerName)
        reviewerEmail = try values.decodeIfPresent(String.self, forKey: .reviewerEmail)
    }

}
