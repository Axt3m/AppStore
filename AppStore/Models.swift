//
//  Models.swift
//  AppStore
//
//  Created by Angela Terao on 24/04/2023.
//

import UIKit

class AppCategory: NSObject {
     
    var name: String?
    var apps: [App]?
//    var type: String?

    
//    private enum CodingKeys: String, CodingKey { case apps }
//    required init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        apps = try container.decode(String.self, forKey: .apps)
//    }
    
    
//    override class func setValue(_ value: Any?, forKey key: String) {
//        if key == "apps" {
//
//            apps = [App]()
//            for dict in value as! [[String: Any]] {
//                let app = App()
//                app.setValuesForKeys(dict)
//                apps.append(app)
//            }
//            
//        } else {
//            super.setValue(value, forKey: key)
//        }
//    }
    
//    static func fetchFeaturedApps() {
//
//        let urlString = "https://api.letsbuildthatapp.com/appstore/featured"
//
//        if let url = URL(string: urlString) {
//            let session = URLSession(configuration: .default)
//
//            let task = session.dataTask(with: url) { data, response, error in
//                if error != nil {
//                    print(error!)
//                    return
//                }
//
//                do {
//                    let json = try JSONSerialization.jsonObject(with: data!, options:.mutableContainers) as! [String: Any]
//
//                    //Get the desired catagories form the JSON data API
//                    var appCategories = [AppCategory]()
//
//
//                    for dict in json["categories"] as! [[String: AnyObject]]{
//                        let appCategory = AppCategory()
//                        appCategory.setValuesForKeys(dict)
//                        appCategories.append(appCategory)
//                    }
//                    print(appCategories)
//
////                do {
////                    let json = try (JSONSerialization.jsonObject(with: data!, options: .mutableContainers))
////
////                    guard let dict = json as? [String: Any] else {
////                        return
////                    }
////
////                    var appCategories = [AppCategory]()
////
////                    for categoryDict in dict["categories"] as? [[String: Any]] ?? [] {
////                        let appCategory = AppCategory()
////                        appCategory.setValuesForKeys(categoryDict)
////                        appCategories.append(appCategory)
////                    }
////                    print(appCategories)
//
//
//                } catch let err {
//                    print(err)
//                }
//            }
//
//            task.resume()
//        }
//
//    }


//
//    static func sampleApps() -> [AppCategory] {
//
//        let bestNewAppsCategory = AppCategory()
//        bestNewAppsCategory.name = "Best New Apps"
//
//        var bestNewApps = [App]()
//
//        let frozenApp = App()
//        frozenApp.name = "Disney Build It: Frozen"
//        frozenApp.category = "Entertainment"
//        frozenApp.nameImage = "frozen"
//        frozenApp.price = NSNumber(floatLiteral: 3.99)
//
//        bestNewApps.append(frozenApp)
//        bestNewAppsCategory.apps = bestNewApps
//
//        let bestNewGamesCategory = AppCategory()
//        bestNewGamesCategory.name = "Best New Games"
//
//        var bestNewGamesApps = [App]()
//
//        let telepaint = App()
//        telepaint.name = "Telepaint"
//        telepaint.category = "Games"
//        telepaint.nameImage = "telepaint"
//        telepaint.price = NSNumber(floatLiteral: 2.99)
//
//        bestNewGamesApps.append(telepaint)
//
//        bestNewGamesCategory.apps = bestNewGamesApps
//
//        return [bestNewAppsCategory, bestNewGamesCategory]
//
//    }
    
}

class App: NSObject {
 
    var name: String?
    var id: NSNumber?
    var category: String?
    var nameImage: String?
    var price: NSNumber?
    

}
