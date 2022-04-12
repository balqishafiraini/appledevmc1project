//
//  CategoryModel.swift
//  mc1project
//
//  Created by Balqis on 11/04/22.
//

import Foundation

struct CategoryModel {
    var image: String?
    var cityName: String?
    var isPopular: Bool?
    var cityDesc: String?
    var cityAttribute: CityModel?
}

struct CityModel: Codable {
    var slider: [String]?
    var food: [FoodModel]?
    var tourism: [TourismModel]?
    var accommodation: [AccommodationModel]?
}

struct FoodModel: Codable {
    var foodName: String?
    var foodImage: String?
}

struct TourismModel: Codable {
    var tourismName: String?
    var tourismImage: String?
}

struct AccommodationModel: Codable {
    var accommodationName: String?
    var accommodationImage: String?
}
