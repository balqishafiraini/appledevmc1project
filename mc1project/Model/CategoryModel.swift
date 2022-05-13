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
    var detail: [DetailModel]?
}

struct TourismModel: Codable {
    var tourismName: String?
    var tourismImage: String?
    var detail: [DetailModel]?
}

struct AccommodationModel: Codable {
    var accommodationName: String?
    var accommodationImage: String?
    var detail: [DetailModel]?
}

struct DetailModel: Codable {
    var detailName: String?
    var detailImage: String?
    var desc: String?
    var image: [String]?
    var price: String?
    var location: String?
    var open_hour: String?
}
