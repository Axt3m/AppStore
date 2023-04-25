//
//  ViewController.swift
//  AppStore
//
//  Created by Angela Terao on 21/04/2023.
//

import UIKit

class FeaturedAppController: UICollectionViewController {

    private let idCell = "idCell"
    
    var appsCategories: [AppCategory]?
    var appManager = AppManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        appsCategories = AppCategory.sampleApps()
        appManager.performRequest()
//        AppCategory.fetchFeaturedApps()
        
        collectionView.backgroundColor = .white
        
        collectionView.register(CategoryCell.self, forCellWithReuseIdentifier: idCell)
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
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
        return CGSizeMake(view.frame.width, 230)
    }
    
}



