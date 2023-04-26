//
//  AppData.swift
//  AppStore
//
//  Created by Angela Terao on 24/04/2023.
//

import UIKit

protocol AppManagerDelegate {
    func didUpdateAppStoreData(_ appManager: AppManager, appStoreData: AppStoreModel)
    func didFailWithError(error: Error)
}

struct AppManager {
    
    var delegate: AppManagerDelegate?
    
    func performRequest() {
        
        let appStoreURL = "https://api.letsbuildthatapp.com/appstore/featured"
        
        //1. Create a URL
        if let url = URL(string: appStoreURL) {
            
            //2. Create a URL Session
            
            let session = URLSession(configuration: .default)
            
            //3. Give the session a task
            
            let task = session.dataTask(with: url) { data, response, error in
                if error != nil {
                    self.delegate?.didFailWithError(error: error!)
                    return
                }
                
                if let safeData = data {
                    if let appStoreData = self.parseJSON(with: safeData) {
                        delegate?.didUpdateAppStoreData(self, appStoreData: appStoreData)
                    }
                }
            }
            
            //4. Start the task
            task.resume()
        }
    }
    
    func parseJSON(with appStoreData: Data) -> AppStoreModel? {
        let decoder = JSONDecoder()
        
        do {
            let decodedData = try decoder.decode(AppStoreData.self, from: appStoreData)
            
            var categories = [AppCategory]()

            for category in decodedData.categories! {
                categories.append(category)
            }
            
            let appStoreData = AppStoreModel(categories: categories)
            
            return appStoreData
        } catch {
            delegate?.didFailWithError(error: error)
            return nil
        }
        
    }
    
}
