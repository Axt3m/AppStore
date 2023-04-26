//
//  AppStoreData.swift
//  AppStore
//
//  Created by Angela Terao on 25/04/2023.
//

import Foundation

struct AppStoreData: Codable {
    let categories: [AppCategory]?
//    let bannerCategory: [AppCat]?
    
}

struct AppCategory: Codable {
    let name: String?
    let apps: [App]?

}

struct App: Codable {
    let Name: String?
    let Id: Int?
    let category: String?
    let ImageName: String
    let Price: Double?
}
