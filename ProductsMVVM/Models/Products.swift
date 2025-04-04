//
//  Products.swift
//  ProductsMVVM
//
//  Created by Lydia Lu on 2025/4/4.
//

import Foundation

// 線上轉檔工具 https://www.json4swift.com
// https://dummyjson.com/products

struct Products : Codable {
    let id : Int?
    let title : String?
    let description : String?
    let category : String?
    let price : Double?
    let discountPercentage : Double?
    let rating : Double?
    let stock : Int?
    let tags : [String]?
    let brand : String?
    let sku : String?
    let weight : Int?
    let dimensions : Dimensions?
    let warrantyInformation : String?
    let shippingInformation : String?
    let availabilityStatus : String?
    let reviews : [Reviews]?
    let returnPolicy : String?
    let minimumOrderQuantity : Int?
    let meta : Meta?
    let images : [String]?
    let thumbnail : String?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case title = "title"
        case description = "description"
        case category = "category"
        case price = "price"
        case discountPercentage = "discountPercentage"
        case rating = "rating"
        case stock = "stock"
        case tags = "tags"
        case brand = "brand"
        case sku = "sku"
        case weight = "weight"
        case dimensions = "dimensions"
        case warrantyInformation = "warrantyInformation"
        case shippingInformation = "shippingInformation"
        case availabilityStatus = "availabilityStatus"
        case reviews = "reviews"
        case returnPolicy = "returnPolicy"
        case minimumOrderQuantity = "minimumOrderQuantity"
        case meta = "meta"
        case images = "images"
        case thumbnail = "thumbnail"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        title = try values.decodeIfPresent(String.self, forKey: .title)
        description = try values.decodeIfPresent(String.self, forKey: .description)
        category = try values.decodeIfPresent(String.self, forKey: .category)
        price = try values.decodeIfPresent(Double.self, forKey: .price)
        discountPercentage = try values.decodeIfPresent(Double.self, forKey: .discountPercentage)
        rating = try values.decodeIfPresent(Double.self, forKey: .rating)
        stock = try values.decodeIfPresent(Int.self, forKey: .stock)
        tags = try values.decodeIfPresent([String].self, forKey: .tags)
        brand = try values.decodeIfPresent(String.self, forKey: .brand)
        sku = try values.decodeIfPresent(String.self, forKey: .sku)
        weight = try values.decodeIfPresent(Int.self, forKey: .weight)
        dimensions = try values.decodeIfPresent(Dimensions.self, forKey: .dimensions)
        warrantyInformation = try values.decodeIfPresent(String.self, forKey: .warrantyInformation)
        shippingInformation = try values.decodeIfPresent(String.self, forKey: .shippingInformation)
        availabilityStatus = try values.decodeIfPresent(String.self, forKey: .availabilityStatus)
        reviews = try values.decodeIfPresent([Reviews].self, forKey: .reviews)
        returnPolicy = try values.decodeIfPresent(String.self, forKey: .returnPolicy)
        minimumOrderQuantity = try values.decodeIfPresent(Int.self, forKey: .minimumOrderQuantity)
        meta = try values.decodeIfPresent(Meta.self, forKey: .meta)
        images = try values.decodeIfPresent([String].self, forKey: .images)
        thumbnail = try values.decodeIfPresent(String.self, forKey: .thumbnail)
    }

}

