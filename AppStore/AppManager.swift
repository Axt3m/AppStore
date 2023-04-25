//
//  AppData.swift
//  AppStore
//
//  Created by Angela Terao on 24/04/2023.
//

import UIKit

struct AppManager {
    
    
    func performRequest() {
        
        let appStoreURL = "https://api.letsbuildthatapp.com/appstore/featured"
        
        //1. Create a URL
        if let url = URL(string: appStoreURL) {
            
            //2. Create a URL Session
            
            let session = URLSession(configuration: .default)
            
            //3. Give the session a task
            
            let task = session.dataTask(with: url) { data, response, error in
                if error != nil {
                    print(error!)
                    return
                }
                
                if let safeData = data {
                    self.parseJSON(appStoreData: safeData)
                }
            }
            
            //4. Start the task
            task.resume()
        }
    }
    
    func parseJSON(appStoreData: Data) {
        let decoder = JSONDecoder()
        
        do {
            let decodedData = try decoder.decode(AppStoreData.self, from: appStoreData)
            
            var appCategories = [AppCat]()
            
            print(decodedData.categories)
//            for cat in decodedData.categories! {
////                let appCategory = AppCategory()
//                appCategories.append(cat)
//            }
//            for app in appCategories
            
//            print(appCategories[0].apps![0])
            
        } catch {
            print(error)
        }
        
    }
    
}
