//
//  AppStoreData.swift
//  AppStore
//
//  Created by Angela Terao on 25/04/2023.
//

import Foundation

struct AppStoreData: Decodable {
    let categories: [AppCat]?
//    let bannerCategory: [AppCat]?
    
//    init(categories: [AppCat], bannerCategory: [Apps]) {
//        self.categories = categories
//        self.bannerCategory = bannerCategory
//    }
//
//    enum CodingKeys: CodingKey {
//        case categories
//        case bannerCategory
//    }
//
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.categories = try container.decode([AppCat].self, forKey: .categories)
//        self.bannerCategory = try container.decode([Apps].self, forKey: .bannerCategory)
//    }
//
//    func encode(to encoder: Encoder) throws {
//        var container = encoder.container(keyedBy: CodingKeys.self)
//        try container.encode(categories, forKey: .categories)
//        try container.encode(bannerCategory, forKey: .bannerCategory)
//    }
    
}

struct AppCat: Decodable {
    let name: String?
    let apps: [Apps]?
    
//    init(name: String, apps: [Apps]) {
//        self.name = name
//        self.apps = apps
//    }
//
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.name = try container.decode(String.self, forKey: .name)
//        self.apps = try container.decode([Apps].self, forKey: .apps)
//    }
}

struct Apps: Decodable {
    let Name: String?
    let Id: Int?
    let category: String?
    let ImageName: String?
    let Price: Double?
    
//    init(Name: String, category: String, ImageName: String, Price: Double) {
//        self.Name = Name
////        self.Id = Id
//        self.category = category
//        self.ImageName = ImageName
//        self.Price = Price
//    }
//
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.Name = try container.decode(String.self, forKey: .Name)
////        self.Id = try container.decode(Int.self, forKey: .Id)
//        self.category = try container.decode(String.self, forKey: .category)
//        self.ImageName = try container.decode(String.self, forKey: .ImageName)
//        self.Price = try container.decode(Double.self, forKey: .Price)
//    }
}
