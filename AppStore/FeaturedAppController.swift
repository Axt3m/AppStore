//
//  ViewController.swift
//  AppStore
//
//  Created by Angela Terao on 21/04/2023.
//

import UIKit

class FeaturedAppController: UICollectionViewController, AppManagerDelegate {

    private let idCell = "idCell"
    private let idLargeCell = "idLargeCell"
    
    var appsCategories: [AppCategory]?
    var appManager = AppManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        

        appManager.delegate = self
        
        appManager.performRequest()

        collectionView.backgroundColor = .white
        collectionView.register(CategoryCell.self, forCellWithReuseIdentifier: idCell)
        collectionView.register(LargeCategoryCell.self, forCellWithReuseIdentifier: idLargeCell)

    }

    func didUpdateAppStoreData(_ appManager: AppManager, appStoreData: AppStoreModel) {
        DispatchQueue.main.async {
            self.appsCategories = appStoreData.categories
            self.collectionView.reloadData()
        }
    }
    
    func didFailWithError(error: Error) {
        print(error)
    }

    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.item == 2 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: idLargeCell, for: indexPath) as! LargeCategoryCell
            cell.appCategory = appsCategories?[indexPath.item]
            
            return cell
        }
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: idCell, for: indexPath) as! CategoryCell

        cell.appCategory = appsCategories?[indexPath.item]
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let count = appsCategories?.count {
            return count
        }
        return 0
    }
}

extension FeaturedAppController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if indexPath.item == 2 {
            return CGSizeMake(view.frame.width, 160)
        }
        
        return CGSizeMake(view.frame.width, 230)
    }
    
}

